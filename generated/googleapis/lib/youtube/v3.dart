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

/// YouTube Data API v3 - v3
///
/// The YouTube Data API v3 is an API that provides access to YouTube data, such
/// as videos, playlists, and channels.
///
/// For more information, see <https://developers.google.com/youtube/>
///
/// Create an instance of [YouTubeApi] to access these resources:
///
/// - [AbuseReportsResource]
/// - [ActivitiesResource]
/// - [CaptionsResource]
/// - [ChannelBannersResource]
/// - [ChannelSectionsResource]
/// - [ChannelsResource]
/// - [CommentThreadsResource]
/// - [CommentsResource]
/// - [I18nLanguagesResource]
/// - [I18nRegionsResource]
/// - [LiveBroadcastsResource]
/// - [LiveChatBansResource]
/// - [LiveChatMessagesResource]
/// - [LiveChatModeratorsResource]
/// - [LiveStreamsResource]
/// - [MembersResource]
/// - [MembershipsLevelsResource]
/// - [PlaylistItemsResource]
/// - [PlaylistsResource]
/// - [SearchResource]
/// - [SubscriptionsResource]
/// - [SuperChatEventsResource]
/// - [TestsResource]
/// - [ThirdPartyLinksResource]
/// - [ThumbnailsResource]
/// - [VideoAbuseReportReasonsResource]
/// - [VideoCategoriesResource]
/// - [VideosResource]
/// - [WatermarksResource]
/// - [YoutubeResource]
///   - [YoutubeV3Resource]
library youtube.v3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
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

/// The YouTube Data API v3 is an API that provides access to YouTube data, such
/// as videos, playlists, and channels.
class YouTubeApi {
  /// Manage your YouTube account
  static const youtubeScope = 'https://www.googleapis.com/auth/youtube';

  /// See a list of your current active channel members, their current level,
  /// and when they became a member
  static const youtubeChannelMembershipsCreatorScope =
      'https://www.googleapis.com/auth/youtube.channel-memberships.creator';

  /// See, edit, and permanently delete your YouTube videos, ratings, comments
  /// and captions
  static const youtubeForceSslScope =
      'https://www.googleapis.com/auth/youtube.force-ssl';

  /// View your YouTube account
  static const youtubeReadonlyScope =
      'https://www.googleapis.com/auth/youtube.readonly';

  /// Manage your YouTube videos
  static const youtubeUploadScope =
      'https://www.googleapis.com/auth/youtube.upload';

  /// View and manage your assets and associated content on YouTube
  static const youtubepartnerScope =
      'https://www.googleapis.com/auth/youtubepartner';

  /// View private information of your YouTube channel relevant during the audit
  /// process with a YouTube partner
  static const youtubepartnerChannelAuditScope =
      'https://www.googleapis.com/auth/youtubepartner-channel-audit';

  final commons.ApiRequester _requester;

  AbuseReportsResource get abuseReports => AbuseReportsResource(_requester);
  ActivitiesResource get activities => ActivitiesResource(_requester);
  CaptionsResource get captions => CaptionsResource(_requester);
  ChannelBannersResource get channelBanners =>
      ChannelBannersResource(_requester);
  ChannelSectionsResource get channelSections =>
      ChannelSectionsResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  CommentThreadsResource get commentThreads =>
      CommentThreadsResource(_requester);
  CommentsResource get comments => CommentsResource(_requester);
  I18nLanguagesResource get i18nLanguages => I18nLanguagesResource(_requester);
  I18nRegionsResource get i18nRegions => I18nRegionsResource(_requester);
  LiveBroadcastsResource get liveBroadcasts =>
      LiveBroadcastsResource(_requester);
  LiveChatBansResource get liveChatBans => LiveChatBansResource(_requester);
  LiveChatMessagesResource get liveChatMessages =>
      LiveChatMessagesResource(_requester);
  LiveChatModeratorsResource get liveChatModerators =>
      LiveChatModeratorsResource(_requester);
  LiveStreamsResource get liveStreams => LiveStreamsResource(_requester);
  MembersResource get members => MembersResource(_requester);
  MembershipsLevelsResource get membershipsLevels =>
      MembershipsLevelsResource(_requester);
  PlaylistItemsResource get playlistItems => PlaylistItemsResource(_requester);
  PlaylistsResource get playlists => PlaylistsResource(_requester);
  SearchResource get search => SearchResource(_requester);
  SubscriptionsResource get subscriptions => SubscriptionsResource(_requester);
  SuperChatEventsResource get superChatEvents =>
      SuperChatEventsResource(_requester);
  TestsResource get tests => TestsResource(_requester);
  ThirdPartyLinksResource get thirdPartyLinks =>
      ThirdPartyLinksResource(_requester);
  ThumbnailsResource get thumbnails => ThumbnailsResource(_requester);
  VideoAbuseReportReasonsResource get videoAbuseReportReasons =>
      VideoAbuseReportReasonsResource(_requester);
  VideoCategoriesResource get videoCategories =>
      VideoCategoriesResource(_requester);
  VideosResource get videos => VideosResource(_requester);
  WatermarksResource get watermarks => WatermarksResource(_requester);
  YoutubeResource get youtube => YoutubeResource(_requester);

  YouTubeApi(http.Client client,
      {core.String rootUrl = 'https://youtube.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AbuseReportsResource {
  final commons.ApiRequester _requester;

  AbuseReportsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AbuseReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AbuseReport> insert(
    AbuseReport request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/abuseReports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AbuseReport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ActivitiesResource {
  final commons.ApiRequester _requester;

  ActivitiesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more activity resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in an
  /// activity resource, the snippet property contains other properties that
  /// identify the type of activity, a display title for the activity, and so
  /// forth. If you set *part=snippet*, the API response will also contain all
  /// of those nested properties.
  ///
  /// [channelId] - null
  ///
  /// [home] - null
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - null
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [publishedAfter] - null
  ///
  /// [publishedBefore] - null
  ///
  /// [regionCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ActivityListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ActivityListResponse> list(
    core.List<core.String> part, {
    core.String? channelId,
    core.bool? home,
    core.int? maxResults,
    core.bool? mine,
    core.String? pageToken,
    core.String? publishedAfter,
    core.String? publishedBefore,
    core.String? regionCode,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (channelId != null) 'channelId': [channelId],
      if (home != null) 'home': ['${home}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (publishedAfter != null) 'publishedAfter': [publishedAfter],
      if (publishedBefore != null) 'publishedBefore': [publishedBefore],
      if (regionCode != null) 'regionCode': [regionCode],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/activities';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ActivityListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CaptionsResource {
  final commons.ApiRequester _requester;

  CaptionsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
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
    core.String id, {
    core.String? onBehalfOf,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOf != null) 'onBehalfOf': [onBehalfOf],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/captions';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Downloads a caption track.
  ///
  /// Request parameters:
  ///
  /// [id] - The ID of the caption track to download, required for One Platform.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [tfmt] - Convert the captions into this format. Supported options are sbv,
  /// srt, and vtt.
  ///
  /// [tlang] - tlang is the language code; machine translate the captions into
  /// this language.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> download(
    core.String id, {
    core.String? onBehalfOf,
    core.String? onBehalfOfContentOwner,
    core.String? tfmt,
    core.String? tlang,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (onBehalfOf != null) 'onBehalfOf': [onBehalfOf],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (tfmt != null) 'tfmt': [tfmt],
      if (tlang != null) 'tlang': [tlang],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'youtube/v3/captions/' + commons.escapeVariable('$id');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return _response as commons.Media;
    }
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the caption resource parts that
  /// the API response will include. Set the parameter value to snippet.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// be on behalf of
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [sync] - Extra parameter to allow automatically syncing the uploaded
  /// caption/transcript with the audio.
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
  /// Completes with a [Caption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Caption> insert(
    Caption request,
    core.List<core.String> part, {
    core.String? onBehalfOf,
    core.String? onBehalfOfContentOwner,
    core.bool? sync,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOf != null) 'onBehalfOf': [onBehalfOf],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (sync != null) 'sync': ['${sync}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/captions';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/captions';
    } else {
      _url = '/upload/youtube/v3/captions';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Caption.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more caption resource parts that the API response will include. The part
  /// names that you can include in the parameter value are id and snippet.
  ///
  /// [videoId] - Returns the captions for the specified video.
  ///
  /// [id] - Returns the captions with the given IDs for Stubby or Apiary.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// on behalf of.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CaptionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CaptionListResponse> list(
    core.List<core.String> part,
    core.String videoId, {
    core.List<core.String>? id,
    core.String? onBehalfOf,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      'videoId': [videoId],
      if (id != null) 'id': id,
      if (onBehalfOf != null) 'onBehalfOf': [onBehalfOf],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/captions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CaptionListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more caption resource parts that the API response will include. The part
  /// names that you can include in the parameter value are id and snippet.
  ///
  /// [onBehalfOf] - ID of the Google+ Page for the channel that the request is
  /// on behalf of.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [sync] - Extra parameter to allow automatically syncing the uploaded
  /// caption/transcript with the audio.
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
  /// Completes with a [Caption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Caption> update(
    Caption request,
    core.List<core.String> part, {
    core.String? onBehalfOf,
    core.String? onBehalfOfContentOwner,
    core.bool? sync,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOf != null) 'onBehalfOf': [onBehalfOf],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (sync != null) 'sync': ['${sync}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/captions';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/captions';
    } else {
      _url = '/upload/youtube/v3/captions';
    }

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Caption.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ChannelBannersResource {
  final commons.ApiRequester _requester;

  ChannelBannersResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [channelId] - Unused, channel_id is currently derived from the security
  /// context of the requestor.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
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
  /// Completes with a [ChannelBannerResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelBannerResource> insert(
    ChannelBannerResource request, {
    core.String? channelId,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/channelBanners/insert';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/channelBanners/insert';
    } else {
      _url = '/upload/youtube/v3/channelBanners/insert';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ChannelBannerResource.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ChannelSectionsResource {
  final commons.ApiRequester _requester;

  ChannelSectionsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channelSections';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part names that you can
  /// include in the parameter value are snippet and contentDetails.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSection> insert(
    ChannelSection request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channelSections';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ChannelSection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more channelSection resource properties that the API response will
  /// include. The part names that you can include in the parameter value are
  /// id, snippet, and contentDetails. If the parameter identifies a property
  /// that contains child properties, the child properties will be included in
  /// the response. For example, in a channelSection resource, the snippet
  /// property contains other properties, such as a display title for the
  /// channelSection. If you set *part=snippet*, the API response will also
  /// contain all of those nested properties.
  ///
  /// [channelId] - Return the ChannelSections owned by the specified channel
  /// ID.
  ///
  /// [hl] - Return content in specified language
  ///
  /// [id] - Return the ChannelSections with the given IDs for Stubby or Apiary.
  ///
  /// [mine] - Return the ChannelSections owned by the authenticated user.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSectionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSectionListResponse> list(
    core.List<core.String> part, {
    core.String? channelId,
    core.String? hl,
    core.List<core.String>? id,
    core.bool? mine,
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (channelId != null) 'channelId': [channelId],
      if (hl != null) 'hl': [hl],
      if (id != null) 'id': id,
      if (mine != null) 'mine': ['${mine}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channelSections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ChannelSectionListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part names that you can
  /// include in the parameter value are snippet and contentDetails.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelSection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelSection> update(
    ChannelSection request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channelSections';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ChannelSection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more channel resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// channel resource, the contentDetails property contains other properties,
  /// such as the uploads properties. As such, if you set *part=contentDetails*,
  /// the API response will also contain all of those nested properties.
  ///
  /// [categoryId] - Return the channels within the specified guide category ID.
  ///
  /// [forUsername] - Return the channel associated with a YouTube username.
  ///
  /// [hl] - Stands for "host language". Specifies the localization language of
  /// the metadata to be filled into snippet.localized. The field is filled with
  /// the default metadata if there is no localization in the specified
  /// language. The parameter value must be a language code included in the list
  /// returned by the i18nLanguages.list method (e.g. en_US, es_MX).
  ///
  /// [id] - Return the channels with the specified IDs.
  ///
  /// [managedByMe] - Return the channels managed by the authenticated user.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - Return the ids of channels owned by the authenticated user.
  ///
  /// [mySubscribers] - Return the channels subscribed to the authenticated user
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelListResponse> list(
    core.List<core.String> part, {
    core.String? categoryId,
    core.String? forUsername,
    core.String? hl,
    core.List<core.String>? id,
    core.bool? managedByMe,
    core.int? maxResults,
    core.bool? mine,
    core.bool? mySubscribers,
    core.String? onBehalfOfContentOwner,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (categoryId != null) 'categoryId': [categoryId],
      if (forUsername != null) 'forUsername': [forUsername],
      if (hl != null) 'hl': [hl],
      if (id != null) 'id': id,
      if (managedByMe != null) 'managedByMe': ['${managedByMe}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (mySubscribers != null) 'mySubscribers': ['${mySubscribers}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ChannelListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The API currently only
  /// allows the parameter value to be set to either brandingSettings or
  /// invideoPromotion. (You cannot update both of those parts with a single
  /// request.) Note that this method overrides the existing values for all of
  /// the mutable properties that are contained in any parts that the parameter
  /// value specifies.
  ///
  /// [onBehalfOfContentOwner] - The *onBehalfOfContentOwner* parameter
  /// indicates that the authenticated user is acting on behalf of the content
  /// owner specified in the parameter value. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and get access to
  /// all their video and channel data, without having to provide authentication
  /// credentials for each individual channel. The actual CMS account that the
  /// user authenticates with needs to be linked to the specified YouTube
  /// content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> update(
    Channel request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/channels';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class CommentThreadsResource {
  final commons.ApiRequester _requester;

  CommentThreadsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. Set the parameter value to snippet. The snippet
  /// part has a quota cost of 2 units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThread> insert(
    CommentThread request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/commentThreads';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CommentThread.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more commentThread resource properties that the API response will include.
  ///
  /// [allThreadsRelatedToChannelId] - Returns the comment threads of all videos
  /// of the channel and the channel comments as well.
  ///
  /// [channelId] - Returns the comment threads for all the channel comments (ie
  /// does not include comments left on videos).
  ///
  /// [id] - Returns the comment threads with the given IDs for Stubby or
  /// Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "1" and "100".
  ///
  /// [moderationStatus] - Limits the returned comment threads to those with the
  /// specified moderation status. Not compatible with the 'id' filter. Valid
  /// values: published, heldForReview, likelySpam.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  ///
  /// [order] - null
  /// Possible string values are:
  /// - "orderUnspecified"
  /// - "time" : Order by time.
  /// - "relevance" : Order by relevance.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [searchTerms] - Limits the returned comment threads to those matching the
  /// specified key words. Not compatible with the 'id' filter.
  ///
  /// [textFormat] - The requested text format for the returned comments.
  /// Possible string values are:
  /// - "textFormatUnspecified"
  /// - "html" : Returns the comments in HTML format. This is the default value.
  /// - "plainText" : Returns the comments in plain text format.
  ///
  /// [videoId] - Returns the comment threads of the specified video.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThreadListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThreadListResponse> list(
    core.List<core.String> part, {
    core.String? allThreadsRelatedToChannelId,
    core.String? channelId,
    core.List<core.String>? id,
    core.int? maxResults,
    core.String? moderationStatus,
    core.String? order,
    core.String? pageToken,
    core.String? searchTerms,
    core.String? textFormat,
    core.String? videoId,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (allThreadsRelatedToChannelId != null)
        'allThreadsRelatedToChannelId': [allThreadsRelatedToChannelId],
      if (channelId != null) 'channelId': [channelId],
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (moderationStatus != null) 'moderationStatus': [moderationStatus],
      if (order != null) 'order': [order],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchTerms != null) 'searchTerms': [searchTerms],
      if (textFormat != null) 'textFormat': [textFormat],
      if (videoId != null) 'videoId': [videoId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/commentThreads';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CommentThreadListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CommentsResource {
  final commons.ApiRequester _requester;

  CommentsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
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
    core.String id, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. Set the parameter value to snippet. The snippet
  /// part has a quota cost of 2 units.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> insert(
    Comment request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more comment resource properties that the API response will include.
  ///
  /// [id] - Returns the comments with the given IDs for One Platform.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [parentId] - Returns replies to the specified comment. Note, currently
  /// YouTube features only one level of replies (ie replies to top level
  /// comments). However replies to replies may be supported in the future.
  ///
  /// [textFormat] - The requested text format for the returned comments.
  /// Possible string values are:
  /// - "textFormatUnspecified"
  /// - "html" : Returns the comments in HTML format. This is the default value.
  /// - "plainText" : Returns the comments in plain text format.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentListResponse> list(
    core.List<core.String> part, {
    core.List<core.String>? id,
    core.int? maxResults,
    core.String? pageToken,
    core.String? parentId,
    core.String? textFormat,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parentId != null) 'parentId': [parentId],
      if (textFormat != null) 'textFormat': [textFormat],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CommentListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Expresses the caller's opinion that one or more comments should be flagged
  /// as spam.
  ///
  /// Request parameters:
  ///
  /// [id] - Flags the comments with the given IDs as spam in the caller's
  /// opinion.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> markAsSpam(
    core.List<core.String> id, {
    core.String? $fields,
  }) async {
    if (id.isEmpty) {
      throw core.ArgumentError('Parameter id cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'id': id,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments/markAsSpam';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Sets the moderation status of one or more comments.
  ///
  /// Request parameters:
  ///
  /// [id] - Modifies the moderation status of the comments with the given IDs
  ///
  /// [moderationStatus] - Specifies the requested moderation status. Note,
  /// comments can be in statuses, which are not available through this call.
  /// For example, this call does not allow to mark a comment as 'likely spam'.
  /// Valid values: MODERATION_STATUS_PUBLISHED,
  /// MODERATION_STATUS_HELD_FOR_REVIEW, MODERATION_STATUS_REJECTED.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  ///
  /// [banAuthor] - If set to true the author of the comment gets added to the
  /// ban list. This means all future comments of the author will autmomatically
  /// be rejected. Only valid in combination with STATUS_REJECTED.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> setModerationStatus(
    core.List<core.String> id,
    core.String moderationStatus, {
    core.bool? banAuthor,
    core.String? $fields,
  }) async {
    if (id.isEmpty) {
      throw core.ArgumentError('Parameter id cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'id': id,
      'moderationStatus': [moderationStatus],
      if (banAuthor != null) 'banAuthor': ['${banAuthor}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments/setModerationStatus';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter identifies the properties that the API
  /// response will include. You must at least include the snippet part in the
  /// parameter value since that part contains all of the properties that the
  /// API request can update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> update(
    Comment request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/comments';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Comment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class I18nLanguagesResource {
  final commons.ApiRequester _requester;

  I18nLanguagesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the i18nLanguage resource
  /// properties that the API response will include. Set the parameter value to
  /// snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [I18nLanguageListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<I18nLanguageListResponse> list(
    core.List<core.String> part, {
    core.String? hl,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (hl != null) 'hl': [hl],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/i18nLanguages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return I18nLanguageListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class I18nRegionsResource {
  final commons.ApiRequester _requester;

  I18nRegionsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the i18nRegion resource properties
  /// that the API response will include. Set the parameter value to snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [I18nRegionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<I18nRegionListResponse> list(
    core.List<core.String> part, {
    core.String? hl,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (hl != null) 'hl': [hl],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/i18nRegions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return I18nRegionListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LiveBroadcastsResource {
  final commons.ApiRequester _requester;

  LiveBroadcastsResource(commons.ApiRequester client) : _requester = client;

  /// Bind a broadcast to a stream.
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to bind to the stream
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [streamId] - Stream to bind, if not set unbind the current one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> bind(
    core.String id,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? streamId,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (streamId != null) 'streamId': [streamId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts/bind';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiveBroadcast.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a given broadcast.
  ///
  /// Request parameters:
  ///
  /// [id] - Broadcast to delete.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, contentDetails,
  /// and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> insert(
    LiveBroadcast request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveBroadcast.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the list of broadcasts associated with the given channel.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, status and statistics.
  ///
  /// [broadcastStatus] - Return broadcasts with a certain status, e.g. active
  /// broadcasts.
  /// Possible string values are:
  /// - "broadcastStatusFilterUnspecified"
  /// - "all" : Return all broadcasts.
  /// - "active" : Return current live broadcasts.
  /// - "upcoming" : Return broadcasts that have not yet started.
  /// - "completed" : Return broadcasts that have already ended.
  ///
  /// [broadcastType] - Return only broadcasts with the selected type.
  /// Possible string values are:
  /// - "broadcastTypeFilterUnspecified"
  /// - "all" : Return all broadcasts.
  /// - "event" : Return only scheduled event broadcasts.
  /// - "persistent" : Return only persistent broadcasts.
  ///
  /// [id] - Return broadcasts with the given ids from Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcastListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcastListResponse> list(
    core.List<core.String> part, {
    core.String? broadcastStatus,
    core.String? broadcastType,
    core.List<core.String>? id,
    core.int? maxResults,
    core.bool? mine,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (broadcastStatus != null) 'broadcastStatus': [broadcastStatus],
      if (broadcastType != null) 'broadcastType': [broadcastType],
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiveBroadcastListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Transition a broadcast to a given status.
  ///
  /// Request parameters:
  ///
  /// [broadcastStatus] - The status to which the broadcast is going to
  /// transition.
  /// Possible string values are:
  /// - "statusUnspecified"
  /// - "testing" : Start testing the broadcast. YouTube transmits video to the
  /// broadcast's monitor stream. Note that you can only transition a broadcast
  /// to the testing state if its
  /// contentDetails.monitorStream.enableMonitorStream property is set to
  /// true.",
  /// - "live" : Return only persistent broadcasts.
  /// - "complete" : The broadcast is over. YouTube stops transmitting video.
  ///
  /// [id] - Broadcast to transition.
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveBroadcast resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, contentDetails, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> transition(
    core.String broadcastStatus,
    core.String id,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'broadcastStatus': [broadcastStatus],
      'id': [id],
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts/transition';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return LiveBroadcast.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing broadcast for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, contentDetails,
  /// and status. Note that this method will override the existing values for
  /// all of the mutable properties that are contained in any parts that the
  /// parameter value specifies. For example, a broadcast's privacy status is
  /// defined in the status part. As such, if your request is updating a private
  /// or unlisted broadcast, and the request's part parameter value includes the
  /// status part, the broadcast's privacy setting will be updated to whatever
  /// value the request body specifies. If the request body does not specify a
  /// value, the existing privacy setting will be removed and the broadcast will
  /// revert to the default privacy setting.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveBroadcast].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveBroadcast> update(
    LiveBroadcast request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveBroadcasts';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveBroadcast.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LiveChatBansResource {
  final commons.ApiRequester _requester;

  LiveChatBansResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a chat ban.
  ///
  /// Request parameters:
  ///
  /// [id] - null
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
    core.String id, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/bans';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response returns. Set the parameter value to
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatBan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatBan> insert(
    LiveChatBan request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/bans';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveChatBan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LiveChatMessagesResource {
  final commons.ApiRequester _requester;

  LiveChatMessagesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a chat message.
  ///
  /// Request parameters:
  ///
  /// [id] - null
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
    core.String id, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/messages';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes. It identifies the
  /// properties that the write operation will set as well as the properties
  /// that the API response will include. Set the parameter value to snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatMessage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatMessage> insert(
    LiveChatMessage request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveChatMessage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [liveChatId] - The id of the live chat for which comments should be
  /// returned.
  ///
  /// [part] - The *part* parameter specifies the liveChatComment resource parts
  /// that the API response will include. Supported values are id and snippet.
  ///
  /// [hl] - Specifies the localization language in which the system messages
  /// should be returned.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "200" and "2000".
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// property identify other pages that could be retrieved.
  ///
  /// [profileImageSize] - Specifies the size of the profile image that should
  /// be returned for each user.
  /// Value must be between "16" and "720".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatMessageListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatMessageListResponse> list(
    core.String liveChatId,
    core.List<core.String> part, {
    core.String? hl,
    core.int? maxResults,
    core.String? pageToken,
    core.int? profileImageSize,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'liveChatId': [liveChatId],
      'part': part,
      if (hl != null) 'hl': [hl],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (profileImageSize != null) 'profileImageSize': ['${profileImageSize}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiveChatMessageListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LiveChatModeratorsResource {
  final commons.ApiRequester _requester;

  LiveChatModeratorsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a chat moderator.
  ///
  /// Request parameters:
  ///
  /// [id] - null
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
    core.String id, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/moderators';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response returns. Set the parameter value to
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatModerator].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatModerator> insert(
    LiveChatModerator request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/moderators';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveChatModerator.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [liveChatId] - The id of the live chat for which moderators should be
  /// returned.
  ///
  /// [part] - The *part* parameter specifies the liveChatModerator resource
  /// parts that the API response will include. Supported values are id and
  /// snippet.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveChatModeratorListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveChatModeratorListResponse> list(
    core.String liveChatId,
    core.List<core.String> part, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'liveChatId': [liveChatId],
      'part': part,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveChat/moderators';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiveChatModeratorListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LiveStreamsResource {
  final commons.ApiRequester _requester;

  LiveStreamsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing stream for the authenticated user.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveStreams';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, cdn,
  /// content_details, and status.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStream> insert(
    LiveStream request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the list of streams associated with the given channel.
  ///
  /// --
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more liveStream resource properties that the API response will include.
  /// The part names that you can include in the parameter value are id,
  /// snippet, cdn, and status.
  ///
  /// [id] - Return LiveStreams with the given ids from Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStreamListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStreamListResponse> list(
    core.List<core.String> part, {
    core.List<core.String>? id,
    core.int? maxResults,
    core.bool? mine,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return LiveStreamListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing stream for the authenticated user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. The part properties that
  /// you can include in the parameter value are id, snippet, cdn, and status.
  /// Note that this method will override the existing values for all of the
  /// mutable properties that are contained in any parts that the parameter
  /// value specifies. If the request body does not specify a value for a
  /// mutable property, the existing value for that property will be removed.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LiveStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LiveStream> update(
    LiveStream request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/liveStreams';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return LiveStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MembersResource {
  final commons.ApiRequester _requester;

  MembersResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of members that match the request criteria for a channel.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the member resource parts that the
  /// API response will include. Set the parameter value to snippet.
  ///
  /// [filterByMemberChannelId] - Comma separated list of channel IDs. Only data
  /// about members that are part of this list will be included in the response.
  ///
  /// [hasAccessToLevel] - Filter members in the results set to the ones that
  /// have access to a level.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "1000".
  ///
  /// [mode] - Parameter that specifies which channel members to return.
  /// Possible string values are:
  /// - "listMembersModeUnknown"
  /// - "updates" : Return only members that joined after the first call with
  /// this mode was made.
  /// - "all_current" : Return all current members, from newest to oldest.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MemberListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MemberListResponse> list(
    core.List<core.String> part, {
    core.String? filterByMemberChannelId,
    core.String? hasAccessToLevel,
    core.int? maxResults,
    core.String? mode,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (filterByMemberChannelId != null)
        'filterByMemberChannelId': [filterByMemberChannelId],
      if (hasAccessToLevel != null) 'hasAccessToLevel': [hasAccessToLevel],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mode != null) 'mode': [mode],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/members';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MemberListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MembershipsLevelsResource {
  final commons.ApiRequester _requester;

  MembershipsLevelsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of all pricing levels offered by a creator to the fans.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the membershipsLevel resource
  /// parts that the API response will include. Supported values are id and
  /// snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembershipsLevelListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembershipsLevelListResponse> list(
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/membershipsLevels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MembershipsLevelListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlaylistItemsResource {
  final commons.ApiRequester _requester;

  PlaylistItemsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlistItems';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItem> insert(
    PlaylistItem request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlistItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PlaylistItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more playlistItem resource properties that the API response will include.
  /// If the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// playlistItem resource, the snippet property contains numerous fields,
  /// including the title, description, position, and resourceId properties. As
  /// such, if you set *part=snippet*, the API response will contain all of
  /// those properties.
  ///
  /// [id] - null
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [playlistId] - Return the playlist items within the given playlist.
  ///
  /// [videoId] - Return the playlist items associated with the given video ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItemListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItemListResponse> list(
    core.List<core.String> part, {
    core.List<core.String>? id,
    core.int? maxResults,
    core.String? onBehalfOfContentOwner,
    core.String? pageToken,
    core.String? playlistId,
    core.String? videoId,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageToken != null) 'pageToken': [pageToken],
      if (playlistId != null) 'playlistId': [playlistId],
      if (videoId != null) 'videoId': [videoId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlistItems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PlaylistItemListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for all of the mutable properties that are
  /// contained in any parts that the parameter value specifies. For example, a
  /// playlist item can specify a start time and end time, which identify the
  /// times portion of the video that should play when users watch the video in
  /// the playlist. If your request is updating a playlist item that sets these
  /// values, and the request's part parameter value includes the contentDetails
  /// part, the playlist item's start and end times will be updated to whatever
  /// value the request body specifies. If the request body does not specify
  /// values, the existing start and end times will be removed and replaced with
  /// the default settings.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistItem> update(
    PlaylistItem request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlistItems';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return PlaylistItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlaylistsResource {
  final commons.ApiRequester _requester;

  PlaylistsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlists';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Playlist].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Playlist> insert(
    Playlist request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlists';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Playlist.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more playlist resource properties that the API response will include. If
  /// the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// playlist resource, the snippet property contains properties like author,
  /// title, description, tags, and timeCreated. As such, if you set
  /// *part=snippet*, the API response will contain all of those properties.
  ///
  /// [channelId] - Return the playlists owned by the specified channel ID.
  ///
  /// [hl] - Returen content in specified language
  ///
  /// [id] - Return the playlists with the given IDs for Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - Return the playlists owned by the authenticated user.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaylistListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaylistListResponse> list(
    core.List<core.String> part, {
    core.String? channelId,
    core.String? hl,
    core.List<core.String>? id,
    core.int? maxResults,
    core.bool? mine,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (channelId != null) 'channelId': [channelId],
      if (hl != null) 'hl': [hl],
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlists';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PlaylistListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for mutable properties that are contained in
  /// any parts that the request body specifies. For example, a playlist's
  /// description is contained in the snippet part, which must be included in
  /// the request body. If the request does not specify a value for the
  /// snippet.description property, the playlist's existing description will be
  /// deleted.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Playlist].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Playlist> update(
    Playlist request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/playlists';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Playlist.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SearchResource {
  final commons.ApiRequester _requester;

  SearchResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of search resources
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more search resource properties that the API response will include. Set
  /// the parameter value to snippet.
  ///
  /// [channelId] - Filter on resources belonging to this channelId.
  ///
  /// [channelType] - Add a filter on the channel search.
  /// Possible string values are:
  /// - "channelTypeUnspecified"
  /// - "any" : Return all channels.
  /// - "show" : Only retrieve shows.
  ///
  /// [eventType] - Filter on the livestream status of the videos.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  ///
  /// [forContentOwner] - Search owned by a content owner.
  ///
  /// [forDeveloper] - Restrict the search to only retrieve videos uploaded
  /// using the project id of the authenticated user.
  ///
  /// [forMine] - Search for the private videos of the authenticated user.
  ///
  /// [location] - Filter on location of the video
  ///
  /// [locationRadius] - Filter on distance from the location (specified above).
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [order] - Sort order of the results.
  /// Possible string values are:
  /// - "searchSortUnspecified"
  /// - "date" : Resources are sorted in reverse chronological order based on
  /// the date they were created.
  /// - "rating" : Resources are sorted from highest to lowest rating.
  /// - "viewCount" : Resources are sorted from highest to lowest number of
  /// views.
  /// - "relevance" : Resources are sorted based on their relevance to the
  /// search query. This is the default value for this parameter.
  /// - "title" : Resources are sorted alphabetically by title.
  /// - "videoCount" : Channels are sorted in descending order of their number
  /// of uploaded videos.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [publishedAfter] - Filter on resources published after this date.
  ///
  /// [publishedBefore] - Filter on resources published before this date.
  ///
  /// [q] - Textual search terms to match.
  ///
  /// [regionCode] - Display the content as seen by viewers in this country.
  ///
  /// [relatedToVideoId] - Search related to a resource.
  ///
  /// [relevanceLanguage] - Return results relevant to this language.
  ///
  /// [safeSearch] - Indicates whether the search results should include
  /// restricted content as well as standard content.
  /// Possible string values are:
  /// - "safeSearchSettingUnspecified"
  /// - "none" : YouTube will not filter the search result set.
  /// - "moderate" : YouTube will filter some content from search results and,
  /// at the least, will filter content that is restricted in your locale. Based
  /// on their content, search results could be removed from search results or
  /// demoted in search results. This is the default parameter value.
  /// - "strict" : YouTube will try to exclude all restricted content from the
  /// search result set. Based on their content, search results could be removed
  /// from search results or demoted in search results.
  ///
  /// [topicId] - Restrict results to a particular topic.
  ///
  /// [type] - Restrict results to a particular set of resource types from One
  /// Platform.
  ///
  /// [videoCaption] - Filter on the presence of captions on the videos.
  /// Possible string values are:
  /// - "videoCaptionUnspecified"
  /// - "any" : Do not filter results based on caption availability.
  /// - "closedCaption" : Only include videos that have captions.
  /// - "none" : Only include videos that do not have captions.
  ///
  /// [videoCategoryId] - Filter on videos in a specific category.
  ///
  /// [videoDefinition] - Filter on the definition of the videos.
  /// Possible string values are:
  /// - "any" : Return all videos, regardless of their resolution.
  /// - "standard" : Only retrieve videos in standard definition.
  /// - "high" : Only retrieve HD videos.
  ///
  /// [videoDimension] - Filter on 3d videos.
  /// Possible string values are:
  /// - "any" : Include both 3D and non-3D videos in returned results. This is
  /// the default value.
  /// - "2d" : Restrict search results to exclude 3D videos.
  /// - "3d" : Restrict search results to only include 3D videos.
  ///
  /// [videoDuration] - Filter on the duration of the videos.
  /// Possible string values are:
  /// - "videoDurationUnspecified"
  /// - "any" : Do not filter video search results based on their duration. This
  /// is the default value.
  /// - "short" : Only include videos that are less than four minutes long.
  /// - "medium" : Only include videos that are between four and 20 minutes long
  /// (inclusive).
  /// - "long" : Only include videos longer than 20 minutes.
  ///
  /// [videoEmbeddable] - Filter on embeddable videos.
  /// Possible string values are:
  /// - "videoEmbeddableUnspecified"
  /// - "any" : Return all videos, embeddable or not.
  /// - "true" : Only retrieve embeddable videos.
  ///
  /// [videoLicense] - Filter on the license of the videos.
  /// Possible string values are:
  /// - "any" : Return all videos, regardless of which license they have, that
  /// match the query parameters.
  /// - "youtube" : Only return videos that have the standard YouTube license.
  /// - "creativeCommon" : Only return videos that have a Creative Commons
  /// license. Users can reuse videos with this license in other videos that
  /// they create. Learn more.
  ///
  /// [videoSyndicated] - Filter on syndicated videos.
  /// Possible string values are:
  /// - "videoSyndicatedUnspecified"
  /// - "any" : Return all videos, syndicated or not.
  /// - "true" : Only retrieve syndicated videos.
  ///
  /// [videoType] - Filter on videos of a specific type.
  /// Possible string values are:
  /// - "videoTypeUnspecified"
  /// - "any" : Return all videos.
  /// - "movie" : Only retrieve movies.
  /// - "episode" : Only retrieve episodes of shows.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchListResponse> list(
    core.List<core.String> part, {
    core.String? channelId,
    core.String? channelType,
    core.String? eventType,
    core.bool? forContentOwner,
    core.bool? forDeveloper,
    core.bool? forMine,
    core.String? location,
    core.String? locationRadius,
    core.int? maxResults,
    core.String? onBehalfOfContentOwner,
    core.String? order,
    core.String? pageToken,
    core.String? publishedAfter,
    core.String? publishedBefore,
    core.String? q,
    core.String? regionCode,
    core.String? relatedToVideoId,
    core.String? relevanceLanguage,
    core.String? safeSearch,
    core.String? topicId,
    core.List<core.String>? type,
    core.String? videoCaption,
    core.String? videoCategoryId,
    core.String? videoDefinition,
    core.String? videoDimension,
    core.String? videoDuration,
    core.String? videoEmbeddable,
    core.String? videoLicense,
    core.String? videoSyndicated,
    core.String? videoType,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (channelId != null) 'channelId': [channelId],
      if (channelType != null) 'channelType': [channelType],
      if (eventType != null) 'eventType': [eventType],
      if (forContentOwner != null) 'forContentOwner': ['${forContentOwner}'],
      if (forDeveloper != null) 'forDeveloper': ['${forDeveloper}'],
      if (forMine != null) 'forMine': ['${forMine}'],
      if (location != null) 'location': [location],
      if (locationRadius != null) 'locationRadius': [locationRadius],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (order != null) 'order': [order],
      if (pageToken != null) 'pageToken': [pageToken],
      if (publishedAfter != null) 'publishedAfter': [publishedAfter],
      if (publishedBefore != null) 'publishedBefore': [publishedBefore],
      if (q != null) 'q': [q],
      if (regionCode != null) 'regionCode': [regionCode],
      if (relatedToVideoId != null) 'relatedToVideoId': [relatedToVideoId],
      if (relevanceLanguage != null) 'relevanceLanguage': [relevanceLanguage],
      if (safeSearch != null) 'safeSearch': [safeSearch],
      if (topicId != null) 'topicId': [topicId],
      if (type != null) 'type': type,
      if (videoCaption != null) 'videoCaption': [videoCaption],
      if (videoCategoryId != null) 'videoCategoryId': [videoCategoryId],
      if (videoDefinition != null) 'videoDefinition': [videoDefinition],
      if (videoDimension != null) 'videoDimension': [videoDimension],
      if (videoDuration != null) 'videoDuration': [videoDuration],
      if (videoEmbeddable != null) 'videoEmbeddable': [videoEmbeddable],
      if (videoLicense != null) 'videoLicense': [videoLicense],
      if (videoSyndicated != null) 'videoSyndicated': [videoSyndicated],
      if (videoType != null) 'videoType': [videoType],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SubscriptionsResource {
  final commons.ApiRequester _requester;

  SubscriptionsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
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
    core.String id, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/subscriptions';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> insert(
    Subscription request,
    core.List<core.String> part, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/subscriptions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more subscription resource properties that the API response will include.
  /// If the parameter identifies a property that contains child properties, the
  /// child properties will be included in the response. For example, in a
  /// subscription resource, the snippet property contains other properties,
  /// such as a display title for the subscription. If you set *part=snippet*,
  /// the API response will also contain all of those nested properties.
  ///
  /// [channelId] - Return the subscriptions of the given channel owner.
  ///
  /// [forChannelId] - Return the subscriptions to the subset of these channels
  /// that the authenticated user is subscribed to.
  ///
  /// [id] - Return the subscriptions with the given IDs for Stubby or Apiary.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "0" and "50".
  ///
  /// [mine] - Flag for returning the subscriptions of the authenticated user.
  ///
  /// [myRecentSubscribers] - null
  ///
  /// [mySubscribers] - Return the subscribers of the given channel owner.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [order] - The order of the returned subscriptions
  /// Possible string values are:
  /// - "subscriptionOrderUnspecified"
  /// - "relevance" : Sort by relevance.
  /// - "unread" : Sort by order of activity.
  /// - "alphabetical" : Sort alphabetically.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionListResponse> list(
    core.List<core.String> part, {
    core.String? channelId,
    core.String? forChannelId,
    core.List<core.String>? id,
    core.int? maxResults,
    core.bool? mine,
    core.bool? myRecentSubscribers,
    core.bool? mySubscribers,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.String? order,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (channelId != null) 'channelId': [channelId],
      if (forChannelId != null) 'forChannelId': [forChannelId],
      if (id != null) 'id': id,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (mine != null) 'mine': ['${mine}'],
      if (myRecentSubscribers != null)
        'myRecentSubscribers': ['${myRecentSubscribers}'],
      if (mySubscribers != null) 'mySubscribers': ['${mySubscribers}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (order != null) 'order': [order],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/subscriptions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SubscriptionListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SuperChatEventsResource {
  final commons.ApiRequester _requester;

  SuperChatEventsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the superChatEvent resource parts
  /// that the API response will include. This parameter is currently not
  /// supported.
  ///
  /// [hl] - Return rendered funding amounts in specified language.
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set.
  /// Value must be between "1" and "50".
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SuperChatEventListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SuperChatEventListResponse> list(
    core.List<core.String> part, {
    core.String? hl,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (hl != null) 'hl': [hl],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/superChatEvents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SuperChatEventListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class TestsResource {
  final commons.ApiRequester _requester;

  TestsResource(commons.ApiRequester client) : _requester = client;

  /// POST method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - null
  ///
  /// [externalChannelId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestItem> insert(
    TestItem request,
    core.List<core.String> part, {
    core.String? externalChannelId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (externalChannelId != null) 'externalChannelId': [externalChannelId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/tests';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestItem.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ThirdPartyLinksResource {
  final commons.ApiRequester _requester;

  ThirdPartyLinksResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [linkingToken] - Delete the partner links with the given linking token.
  ///
  /// [type] - Type of the link to be deleted.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  ///
  /// [externalChannelId] - Channel ID to which changes should be applied, for
  /// delegation.
  ///
  /// [part] - Do not use. Required for compatibility.
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
    core.String linkingToken,
    core.String type, {
    core.String? externalChannelId,
    core.List<core.String>? part,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'linkingToken': [linkingToken],
      'type': [type],
      if (externalChannelId != null) 'externalChannelId': [externalChannelId],
      if (part != null) 'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/thirdPartyLinks';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API request and response will include. Supported values are
  /// linkingToken, status, and snippet.
  ///
  /// [externalChannelId] - Channel ID to which changes should be applied, for
  /// delegation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> insert(
    ThirdPartyLink request,
    core.List<core.String> part, {
    core.String? externalChannelId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (externalChannelId != null) 'externalChannelId': [externalChannelId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/thirdPartyLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ThirdPartyLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API response will include. Supported values are linkingToken,
  /// status, and snippet.
  ///
  /// [externalChannelId] - Channel ID to which changes should be applied, for
  /// delegation.
  ///
  /// [linkingToken] - Get a third party link with the given linking token.
  ///
  /// [type] - Get a third party link of the given type.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> list(
    core.List<core.String> part, {
    core.String? externalChannelId,
    core.String? linkingToken,
    core.String? type,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (externalChannelId != null) 'externalChannelId': [externalChannelId],
      if (linkingToken != null) 'linkingToken': [linkingToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/thirdPartyLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ThirdPartyLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the thirdPartyLink resource parts
  /// that the API request and response will include. Supported values are
  /// linkingToken, status, and snippet.
  ///
  /// [externalChannelId] - Channel ID to which changes should be applied, for
  /// delegation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ThirdPartyLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThirdPartyLink> update(
    ThirdPartyLink request,
    core.List<core.String> part, {
    core.String? externalChannelId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (externalChannelId != null) 'externalChannelId': [externalChannelId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/thirdPartyLinks';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ThirdPartyLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ThumbnailsResource {
  final commons.ApiRequester _requester;

  ThumbnailsResource(commons.ApiRequester client) : _requester = client;

  /// As this is not an insert in a strict sense (it supports uploading/setting
  /// of a thumbnail for multiple videos, which doesn't result in creation of a
  /// single resource), I use a custom verb here.
  ///
  /// Request parameters:
  ///
  /// [videoId] - Returns the Thumbnail with the given video IDs for Stubby or
  /// Apiary.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
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
  /// Completes with a [ThumbnailSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ThumbnailSetResponse> set(
    core.String videoId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'videoId': [videoId],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/thumbnails/set';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/thumbnails/set';
    } else {
      _url = '/upload/youtube/v3/thumbnails/set';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ThumbnailSetResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class VideoAbuseReportReasonsResource {
  final commons.ApiRequester _requester;

  VideoAbuseReportReasonsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the videoCategory resource parts
  /// that the API response will include. Supported values are id and snippet.
  ///
  /// [hl] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoAbuseReportReasonListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoAbuseReportReasonListResponse> list(
    core.List<core.String> part, {
    core.String? hl,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (hl != null) 'hl': [hl],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videoAbuseReportReasons';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VideoAbuseReportReasonListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class VideoCategoriesResource {
  final commons.ApiRequester _requester;

  VideoCategoriesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies the videoCategory resource
  /// properties that the API response will include. Set the parameter value to
  /// snippet.
  ///
  /// [hl] - null
  ///
  /// [id] - Returns the video categories with the given IDs for Stubby or
  /// Apiary.
  ///
  /// [regionCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoCategoryListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoCategoryListResponse> list(
    core.List<core.String> part, {
    core.String? hl,
    core.List<core.String>? id,
    core.String? regionCode,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (hl != null) 'hl': [hl],
      if (id != null) 'id': id,
      if (regionCode != null) 'regionCode': [regionCode],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videoCategories';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VideoCategoryListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class VideosResource {
  final commons.ApiRequester _requester;

  VideosResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a resource.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
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
    core.String id, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Retrieves the ratings that the authorized user gave to a list of specified
  /// videos.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoGetRatingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoGetRatingResponse> getRating(
    core.List<core.String> id, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    if (id.isEmpty) {
      throw core.ArgumentError('Parameter id cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'id': id,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos/getRating';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VideoGetRatingResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new resource into this collection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that not all parts
  /// contain properties that can be set when inserting or updating a video. For
  /// example, the statistics object encapsulates statistics that YouTube
  /// calculates for a video and does not contain values that you can set or
  /// modify. If the parameter value specifies a part that does not contain
  /// mutable values, that part will still be included in the API response.
  ///
  /// [autoLevels] - Should auto-levels be applied to the upload.
  ///
  /// [notifySubscribers] - Notify the channel subscribers about the new video.
  /// As default, the notification is enabled.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
  /// properly authorized request. *Note:* This parameter is intended
  /// exclusively for YouTube content partners. The
  /// *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID
  /// of the channel to which a video is being added. This parameter is required
  /// when a request specifies a value for the onBehalfOfContentOwner parameter,
  /// and it can only be used in conjunction with that parameter. In addition,
  /// the request must be authorized using a CMS account that is linked to the
  /// content owner that the onBehalfOfContentOwner parameter specifies.
  /// Finally, the channel that the onBehalfOfContentOwnerChannel parameter
  /// value specifies must be linked to the content owner that the
  /// onBehalfOfContentOwner parameter specifies. This parameter is intended for
  /// YouTube content partners that own and manage many different YouTube
  /// channels. It allows content owners to authenticate once and perform
  /// actions on behalf of the channel specified in the parameter value, without
  /// having to provide authentication credentials for each separate channel.
  ///
  /// [stabilize] - Should stabilize be applied to the upload.
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
  /// Completes with a [Video].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Video> insert(
    Video request,
    core.List<core.String> part, {
    core.bool? autoLevels,
    core.bool? notifySubscribers,
    core.String? onBehalfOfContentOwner,
    core.String? onBehalfOfContentOwnerChannel,
    core.bool? stabilize,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (autoLevels != null) 'autoLevels': ['${autoLevels}'],
      if (notifySubscribers != null)
        'notifySubscribers': ['${notifySubscribers}'],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (onBehalfOfContentOwnerChannel != null)
        'onBehalfOfContentOwnerChannel': [onBehalfOfContentOwnerChannel],
      if (stabilize != null) 'stabilize': ['${stabilize}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/videos';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/videos';
    } else {
      _url = '/upload/youtube/v3/videos';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Video.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of resources, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of one or
  /// more video resource properties that the API response will include. If the
  /// parameter identifies a property that contains child properties, the child
  /// properties will be included in the response. For example, in a video
  /// resource, the snippet property contains the channelId, title, description,
  /// tags, and categoryId properties. As such, if you set *part=snippet*, the
  /// API response will contain all of those properties.
  ///
  /// [chart] - Return the videos that are in the specified chart.
  /// Possible string values are:
  /// - "chartUnspecified"
  /// - "mostPopular" : Return the most popular videos for the specified content
  /// region and video category.
  ///
  /// [hl] - Stands for "host language". Specifies the localization language of
  /// the metadata to be filled into snippet.localized. The field is filled with
  /// the default metadata if there is no localization in the specified
  /// language. The parameter value must be a language code included in the list
  /// returned by the i18nLanguages.list method (e.g. en_US, es_MX).
  ///
  /// [id] - Return videos with the given ids.
  ///
  /// [locale] - null
  ///
  /// [maxHeight] - null
  /// Value must be between "72" and "8192".
  ///
  /// [maxResults] - The *maxResults* parameter specifies the maximum number of
  /// items that should be returned in the result set. *Note:* This parameter is
  /// supported for use in conjunction with the myRating and chart parameters,
  /// but it is not supported for use in conjunction with the id parameter.
  /// Value must be between "1" and "50".
  ///
  /// [maxWidth] - Return the player with maximum height specified in
  /// Value must be between "72" and "8192".
  ///
  /// [myRating] - Return videos liked/disliked by the authenticated user. Does
  /// not support RateType.RATED_TYPE_NONE.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [pageToken] - The *pageToken* parameter identifies a specific page in the
  /// result set that should be returned. In an API response, the nextPageToken
  /// and prevPageToken properties identify other pages that could be retrieved.
  /// *Note:* This parameter is supported for use in conjunction with the
  /// myRating and chart parameters, but it is not supported for use in
  /// conjunction with the id parameter.
  ///
  /// [regionCode] - Use a chart that is specific to the specified region
  ///
  /// [videoCategoryId] - Use chart that is specific to the specified video
  /// category
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoListResponse> list(
    core.List<core.String> part, {
    core.String? chart,
    core.String? hl,
    core.List<core.String>? id,
    core.String? locale,
    core.int? maxHeight,
    core.int? maxResults,
    core.int? maxWidth,
    core.String? myRating,
    core.String? onBehalfOfContentOwner,
    core.String? pageToken,
    core.String? regionCode,
    core.String? videoCategoryId,
    core.String? $fields,
  }) async {
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (chart != null) 'chart': [chart],
      if (hl != null) 'hl': [hl],
      if (id != null) 'id': id,
      if (locale != null) 'locale': [locale],
      if (maxHeight != null) 'maxHeight': ['${maxHeight}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (maxWidth != null) 'maxWidth': ['${maxWidth}'],
      if (myRating != null) 'myRating': [myRating],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if (pageToken != null) 'pageToken': [pageToken],
      if (regionCode != null) 'regionCode': [regionCode],
      if (videoCategoryId != null) 'videoCategoryId': [videoCategoryId],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VideoListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Adds a like or dislike rating to a video or removes a rating from a video.
  ///
  /// Request parameters:
  ///
  /// [id] - null
  ///
  /// [rating] - null
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> rate(
    core.String id,
    core.String rating, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'id': [id],
      'rating': [rating],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos/rate';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Report abuse for a video.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> reportAbuse(
    VideoAbuseReport request, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos/reportAbuse';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter serves two purposes in this operation. It
  /// identifies the properties that the write operation will set as well as the
  /// properties that the API response will include. Note that this method will
  /// override the existing values for all of the mutable properties that are
  /// contained in any parts that the parameter value specifies. For example, a
  /// video's privacy setting is contained in the status part. As such, if your
  /// request is updating a private video, and the request's part parameter
  /// value includes the status part, the video's privacy setting will be
  /// updated to whatever value the request body specifies. If the request body
  /// does not specify a value, the existing privacy setting will be removed and
  /// the video will revert to the default privacy setting. In addition, not all
  /// parts contain properties that can be set when inserting or updating a
  /// video. For example, the statistics object encapsulates statistics that
  /// YouTube calculates for a video and does not contain values that you can
  /// set or modify. If the parameter value specifies a part that does not
  /// contain mutable values, that part will still be included in the API
  /// response.
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The actual CMS account that the user authenticates
  /// with must be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Video].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Video> update(
    Video request,
    core.List<core.String> part, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    if (part.isEmpty) {
      throw core.ArgumentError('Parameter part cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'part': part,
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/videos';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Video.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class WatermarksResource {
  final commons.ApiRequester _requester;

  WatermarksResource(commons.ApiRequester client) : _requester = client;

  /// Allows upload of watermark image and setting it for a channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [channelId] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
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
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> set(
    InvideoBranding request,
    core.String channelId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      'channelId': [channelId],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'youtube/v3/watermarks/set';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/watermarks/set';
    } else {
      _url = '/upload/youtube/v3/watermarks/set';
    }

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
      downloadOptions: null,
    );
  }

  /// Allows removal of channel watermark.
  ///
  /// Request parameters:
  ///
  /// [channelId] - null
  ///
  /// [onBehalfOfContentOwner] - *Note:* This parameter is intended exclusively
  /// for YouTube content partners. The *onBehalfOfContentOwner* parameter
  /// indicates that the request's authorization credentials identify a YouTube
  /// CMS user who is acting on behalf of the content owner specified in the
  /// parameter value. This parameter is intended for YouTube content partners
  /// that own and manage many different YouTube channels. It allows content
  /// owners to authenticate once and get access to all their video and channel
  /// data, without having to provide authentication credentials for each
  /// individual channel. The CMS account that the user authenticates with must
  /// be linked to the specified YouTube content owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> unset(
    core.String channelId, {
    core.String? onBehalfOfContentOwner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'channelId': [channelId],
      if (onBehalfOfContentOwner != null)
        'onBehalfOfContentOwner': [onBehalfOfContentOwner],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/watermarks/unset';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }
}

class YoutubeResource {
  final commons.ApiRequester _requester;

  YoutubeV3Resource get v3 => YoutubeV3Resource(_requester);

  YoutubeResource(commons.ApiRequester client) : _requester = client;
}

class YoutubeV3Resource {
  final commons.ApiRequester _requester;

  YoutubeV3Resource(commons.ApiRequester client) : _requester = client;

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [part] - The *part* parameter specifies a comma-separated list of
  /// commentThread resource properties that the API response will include. You
  /// must at least include the snippet part in the parameter value since that
  /// part contains all of the properties that the API request can update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentThread].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentThread> updateCommentThreads(
    CommentThread request, {
    core.List<core.String>? part,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (part != null) 'part': part,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'youtube/v3/commentThreads';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return CommentThread.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AbuseReport {
  core.List<AbuseType>? abuseTypes;
  core.String? description;
  core.List<RelatedEntity>? relatedEntities;
  Entity? subject;

  AbuseReport({
    this.abuseTypes,
    this.description,
    this.relatedEntities,
    this.subject,
  });

  AbuseReport.fromJson(core.Map _json)
      : this(
          abuseTypes: _json.containsKey('abuseTypes')
              ? (_json['abuseTypes'] as core.List)
                  .map((value) => AbuseType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          relatedEntities: _json.containsKey('relatedEntities')
              ? (_json['relatedEntities'] as core.List)
                  .map((value) => RelatedEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subject: _json.containsKey('subject')
              ? Entity.fromJson(
                  _json['subject'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abuseTypes != null) 'abuseTypes': abuseTypes!,
        if (description != null) 'description': description!,
        if (relatedEntities != null) 'relatedEntities': relatedEntities!,
        if (subject != null) 'subject': subject!,
      };
}

typedef AbuseType = $Shared09;

/// Rights management policy for YouTube resources.
class AccessPolicy {
  /// The value of allowed indicates whether the access to the policy is allowed
  /// or denied by default.
  core.bool? allowed;

  /// A list of region codes that identify countries where the default policy do
  /// not apply.
  core.List<core.String>? exception;

  AccessPolicy({
    this.allowed,
    this.exception,
  });

  AccessPolicy.fromJson(core.Map _json)
      : this(
          allowed: _json.containsKey('allowed')
              ? _json['allowed'] as core.bool
              : null,
          exception: _json.containsKey('exception')
              ? (_json['exception'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowed != null) 'allowed': allowed!,
        if (exception != null) 'exception': exception!,
      };
}

/// An *activity* resource contains information about an action that a
/// particular channel, or user, has taken on YouTube.The actions reported in
/// activity feeds include rating a video, sharing a video, marking a video as a
/// favorite, commenting on a video, uploading a video, and so forth.
///
/// Each activity resource identifies the type of action, the channel associated
/// with the action, and the resource(s) associated with the action, such as the
/// video that was rated or uploaded.
class Activity {
  /// The contentDetails object contains information about the content
  /// associated with the activity.
  ///
  /// For example, if the snippet.type value is videoRated, then the
  /// contentDetails object's content identifies the rated video.
  ActivityContentDetails? contentDetails;

  /// Etag of this resource
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the activity.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#activity".
  core.String? kind;

  /// The snippet object contains basic details about the activity, including
  /// the activity's type and group ID.
  ActivitySnippet? snippet;

  Activity({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  Activity.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? ActivityContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? ActivitySnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// Details about the content of an activity: the video that was shared, the
/// channel that was subscribed to, etc.
class ActivityContentDetails {
  /// The bulletin object contains details about a channel bulletin post.
  ///
  /// This object is only present if the snippet.type is bulletin.
  ActivityContentDetailsBulletin? bulletin;

  /// The channelItem object contains details about a resource which was added
  /// to a channel.
  ///
  /// This property is only present if the snippet.type is channelItem.
  ActivityContentDetailsChannelItem? channelItem;

  /// The comment object contains information about a resource that received a
  /// comment.
  ///
  /// This property is only present if the snippet.type is comment.
  ActivityContentDetailsComment? comment;

  /// The favorite object contains information about a video that was marked as
  /// a favorite video.
  ///
  /// This property is only present if the snippet.type is favorite.
  ActivityContentDetailsFavorite? favorite;

  /// The like object contains information about a resource that received a
  /// positive (like) rating.
  ///
  /// This property is only present if the snippet.type is like.
  ActivityContentDetailsLike? like;

  /// The playlistItem object contains information about a new playlist item.
  ///
  /// This property is only present if the snippet.type is playlistItem.
  ActivityContentDetailsPlaylistItem? playlistItem;

  /// The promotedItem object contains details about a resource which is being
  /// promoted.
  ///
  /// This property is only present if the snippet.type is promotedItem.
  ActivityContentDetailsPromotedItem? promotedItem;

  /// The recommendation object contains information about a recommended
  /// resource.
  ///
  /// This property is only present if the snippet.type is recommendation.
  ActivityContentDetailsRecommendation? recommendation;

  /// The social object contains details about a social network post.
  ///
  /// This property is only present if the snippet.type is social.
  ActivityContentDetailsSocial? social;

  /// The subscription object contains information about a channel that a user
  /// subscribed to.
  ///
  /// This property is only present if the snippet.type is subscription.
  ActivityContentDetailsSubscription? subscription;

  /// The upload object contains information about the uploaded video.
  ///
  /// This property is only present if the snippet.type is upload.
  ActivityContentDetailsUpload? upload;

  ActivityContentDetails({
    this.bulletin,
    this.channelItem,
    this.comment,
    this.favorite,
    this.like,
    this.playlistItem,
    this.promotedItem,
    this.recommendation,
    this.social,
    this.subscription,
    this.upload,
  });

  ActivityContentDetails.fromJson(core.Map _json)
      : this(
          bulletin: _json.containsKey('bulletin')
              ? ActivityContentDetailsBulletin.fromJson(
                  _json['bulletin'] as core.Map<core.String, core.dynamic>)
              : null,
          channelItem: _json.containsKey('channelItem')
              ? ActivityContentDetailsChannelItem.fromJson(
                  _json['channelItem'] as core.Map<core.String, core.dynamic>)
              : null,
          comment: _json.containsKey('comment')
              ? ActivityContentDetailsComment.fromJson(
                  _json['comment'] as core.Map<core.String, core.dynamic>)
              : null,
          favorite: _json.containsKey('favorite')
              ? ActivityContentDetailsFavorite.fromJson(
                  _json['favorite'] as core.Map<core.String, core.dynamic>)
              : null,
          like: _json.containsKey('like')
              ? ActivityContentDetailsLike.fromJson(
                  _json['like'] as core.Map<core.String, core.dynamic>)
              : null,
          playlistItem: _json.containsKey('playlistItem')
              ? ActivityContentDetailsPlaylistItem.fromJson(
                  _json['playlistItem'] as core.Map<core.String, core.dynamic>)
              : null,
          promotedItem: _json.containsKey('promotedItem')
              ? ActivityContentDetailsPromotedItem.fromJson(
                  _json['promotedItem'] as core.Map<core.String, core.dynamic>)
              : null,
          recommendation: _json.containsKey('recommendation')
              ? ActivityContentDetailsRecommendation.fromJson(
                  _json['recommendation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          social: _json.containsKey('social')
              ? ActivityContentDetailsSocial.fromJson(
                  _json['social'] as core.Map<core.String, core.dynamic>)
              : null,
          subscription: _json.containsKey('subscription')
              ? ActivityContentDetailsSubscription.fromJson(
                  _json['subscription'] as core.Map<core.String, core.dynamic>)
              : null,
          upload: _json.containsKey('upload')
              ? ActivityContentDetailsUpload.fromJson(
                  _json['upload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulletin != null) 'bulletin': bulletin!,
        if (channelItem != null) 'channelItem': channelItem!,
        if (comment != null) 'comment': comment!,
        if (favorite != null) 'favorite': favorite!,
        if (like != null) 'like': like!,
        if (playlistItem != null) 'playlistItem': playlistItem!,
        if (promotedItem != null) 'promotedItem': promotedItem!,
        if (recommendation != null) 'recommendation': recommendation!,
        if (social != null) 'social': social!,
        if (subscription != null) 'subscription': subscription!,
        if (upload != null) 'upload': upload!,
      };
}

/// Details about a channel bulletin post.
class ActivityContentDetailsBulletin {
  /// The resourceId object contains information that identifies the resource
  /// associated with a bulletin post.
  ///
  /// @mutable youtube.activities.insert
  ResourceId? resourceId;

  ActivityContentDetailsBulletin({
    this.resourceId,
  });

  ActivityContentDetailsBulletin.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Details about a resource which was added to a channel.
class ActivityContentDetailsChannelItem {
  /// The resourceId object contains information that identifies the resource
  /// that was added to the channel.
  ResourceId? resourceId;

  ActivityContentDetailsChannelItem({
    this.resourceId,
  });

  ActivityContentDetailsChannelItem.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Information about a resource that received a comment.
class ActivityContentDetailsComment {
  /// The resourceId object contains information that identifies the resource
  /// associated with the comment.
  ResourceId? resourceId;

  ActivityContentDetailsComment({
    this.resourceId,
  });

  ActivityContentDetailsComment.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Information about a video that was marked as a favorite video.
class ActivityContentDetailsFavorite {
  /// The resourceId object contains information that identifies the resource
  /// that was marked as a favorite.
  ResourceId? resourceId;

  ActivityContentDetailsFavorite({
    this.resourceId,
  });

  ActivityContentDetailsFavorite.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Information about a resource that received a positive (like) rating.
class ActivityContentDetailsLike {
  /// The resourceId object contains information that identifies the rated
  /// resource.
  ResourceId? resourceId;

  ActivityContentDetailsLike({
    this.resourceId,
  });

  ActivityContentDetailsLike.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Information about a new playlist item.
class ActivityContentDetailsPlaylistItem {
  /// The value that YouTube uses to uniquely identify the playlist.
  core.String? playlistId;

  /// ID of the item within the playlist.
  core.String? playlistItemId;

  /// The resourceId object contains information about the resource that was
  /// added to the playlist.
  ResourceId? resourceId;

  ActivityContentDetailsPlaylistItem({
    this.playlistId,
    this.playlistItemId,
    this.resourceId,
  });

  ActivityContentDetailsPlaylistItem.fromJson(core.Map _json)
      : this(
          playlistId: _json.containsKey('playlistId')
              ? _json['playlistId'] as core.String
              : null,
          playlistItemId: _json.containsKey('playlistItemId')
              ? _json['playlistItemId'] as core.String
              : null,
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (playlistId != null) 'playlistId': playlistId!,
        if (playlistItemId != null) 'playlistItemId': playlistItemId!,
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Details about a resource which is being promoted.
class ActivityContentDetailsPromotedItem {
  /// The URL the client should fetch to request a promoted item.
  core.String? adTag;

  /// The URL the client should ping to indicate that the user clicked through
  /// on this promoted item.
  core.String? clickTrackingUrl;

  /// The URL the client should ping to indicate that the user was shown this
  /// promoted item.
  core.String? creativeViewUrl;

  /// The type of call-to-action, a message to the user indicating action that
  /// can be taken.
  /// Possible string values are:
  /// - "ctaTypeUnspecified"
  /// - "visitAdvertiserSite"
  core.String? ctaType;

  /// The custom call-to-action button text.
  ///
  /// If specified, it will override the default button text for the cta_type.
  core.String? customCtaButtonText;

  /// The text description to accompany the promoted item.
  core.String? descriptionText;

  /// The URL the client should direct the user to, if the user chooses to visit
  /// the advertiser's website.
  core.String? destinationUrl;

  /// The list of forecasting URLs.
  ///
  /// The client should ping all of these URLs when a promoted item is not
  /// available, to indicate that a promoted item could have been shown.
  core.List<core.String>? forecastingUrl;

  /// The list of impression URLs.
  ///
  /// The client should ping all of these URLs to indicate that the user was
  /// shown this promoted item.
  core.List<core.String>? impressionUrl;

  /// The ID that YouTube uses to uniquely identify the promoted video.
  core.String? videoId;

  ActivityContentDetailsPromotedItem({
    this.adTag,
    this.clickTrackingUrl,
    this.creativeViewUrl,
    this.ctaType,
    this.customCtaButtonText,
    this.descriptionText,
    this.destinationUrl,
    this.forecastingUrl,
    this.impressionUrl,
    this.videoId,
  });

  ActivityContentDetailsPromotedItem.fromJson(core.Map _json)
      : this(
          adTag:
              _json.containsKey('adTag') ? _json['adTag'] as core.String : null,
          clickTrackingUrl: _json.containsKey('clickTrackingUrl')
              ? _json['clickTrackingUrl'] as core.String
              : null,
          creativeViewUrl: _json.containsKey('creativeViewUrl')
              ? _json['creativeViewUrl'] as core.String
              : null,
          ctaType: _json.containsKey('ctaType')
              ? _json['ctaType'] as core.String
              : null,
          customCtaButtonText: _json.containsKey('customCtaButtonText')
              ? _json['customCtaButtonText'] as core.String
              : null,
          descriptionText: _json.containsKey('descriptionText')
              ? _json['descriptionText'] as core.String
              : null,
          destinationUrl: _json.containsKey('destinationUrl')
              ? _json['destinationUrl'] as core.String
              : null,
          forecastingUrl: _json.containsKey('forecastingUrl')
              ? (_json['forecastingUrl'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          impressionUrl: _json.containsKey('impressionUrl')
              ? (_json['impressionUrl'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adTag != null) 'adTag': adTag!,
        if (clickTrackingUrl != null) 'clickTrackingUrl': clickTrackingUrl!,
        if (creativeViewUrl != null) 'creativeViewUrl': creativeViewUrl!,
        if (ctaType != null) 'ctaType': ctaType!,
        if (customCtaButtonText != null)
          'customCtaButtonText': customCtaButtonText!,
        if (descriptionText != null) 'descriptionText': descriptionText!,
        if (destinationUrl != null) 'destinationUrl': destinationUrl!,
        if (forecastingUrl != null) 'forecastingUrl': forecastingUrl!,
        if (impressionUrl != null) 'impressionUrl': impressionUrl!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// Information that identifies the recommended resource.
class ActivityContentDetailsRecommendation {
  /// The reason that the resource is recommended to the user.
  /// Possible string values are:
  /// - "reasonUnspecified"
  /// - "videoFavorited"
  /// - "videoLiked"
  /// - "videoWatched"
  core.String? reason;

  /// The resourceId object contains information that identifies the recommended
  /// resource.
  ResourceId? resourceId;

  /// The seedResourceId object contains information about the resource that
  /// caused the recommendation.
  ResourceId? seedResourceId;

  ActivityContentDetailsRecommendation({
    this.reason,
    this.resourceId,
    this.seedResourceId,
  });

  ActivityContentDetailsRecommendation.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
          seedResourceId: _json.containsKey('seedResourceId')
              ? ResourceId.fromJson(_json['seedResourceId']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (seedResourceId != null) 'seedResourceId': seedResourceId!,
      };
}

/// Details about a social network post.
class ActivityContentDetailsSocial {
  /// The author of the social network post.
  core.String? author;

  /// An image of the post's author.
  core.String? imageUrl;

  /// The URL of the social network post.
  core.String? referenceUrl;

  /// The resourceId object encapsulates information that identifies the
  /// resource associated with a social network post.
  ResourceId? resourceId;

  /// The name of the social network.
  /// Possible string values are:
  /// - "unspecified"
  /// - "googlePlus"
  /// - "facebook"
  /// - "twitter"
  core.String? type;

  ActivityContentDetailsSocial({
    this.author,
    this.imageUrl,
    this.referenceUrl,
    this.resourceId,
    this.type,
  });

  ActivityContentDetailsSocial.fromJson(core.Map _json)
      : this(
          author: _json.containsKey('author')
              ? _json['author'] as core.String
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          referenceUrl: _json.containsKey('referenceUrl')
              ? _json['referenceUrl'] as core.String
              : null,
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (referenceUrl != null) 'referenceUrl': referenceUrl!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (type != null) 'type': type!,
      };
}

/// Information about a channel that a user subscribed to.
class ActivityContentDetailsSubscription {
  /// The resourceId object contains information that identifies the resource
  /// that the user subscribed to.
  ResourceId? resourceId;

  ActivityContentDetailsSubscription({
    this.resourceId,
  });

  ActivityContentDetailsSubscription.fromJson(core.Map _json)
      : this(
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
      };
}

/// Information about the uploaded video.
class ActivityContentDetailsUpload {
  /// The ID that YouTube uses to uniquely identify the uploaded video.
  core.String? videoId;

  ActivityContentDetailsUpload({
    this.videoId,
  });

  ActivityContentDetailsUpload.fromJson(core.Map _json)
      : this(
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoId != null) 'videoId': videoId!,
      };
}

class ActivityListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;
  core.List<Activity>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#activityListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  ActivityListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  ActivityListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Activity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about an activity, including title, description, thumbnails,
/// activity type and group.
///
/// Next ID: 12
class ActivitySnippet {
  /// The ID that YouTube uses to uniquely identify the channel associated with
  /// the activity.
  core.String? channelId;

  /// Channel title for the channel responsible for this activity
  core.String? channelTitle;

  /// The description of the resource primarily associated with the activity.
  ///
  /// @mutable youtube.activities.insert
  core.String? description;

  /// The group ID associated with the activity.
  ///
  /// A group ID identifies user events that are associated with the same user
  /// and resource. For example, if a user rates a video and marks the same
  /// video as a favorite, the entries for those events would have the same
  /// group ID in the user's activity feed. In your user interface, you can
  /// avoid repetition by grouping events with the same groupId value.
  core.String? groupId;

  /// The date and time that the video was uploaded.
  core.DateTime? publishedAt;

  /// A map of thumbnail images associated with the resource that is primarily
  /// associated with the activity.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The title of the resource primarily associated with the activity.
  core.String? title;

  /// The type of activity that the resource describes.
  /// Possible string values are:
  /// - "typeUnspecified"
  /// - "upload"
  /// - "like"
  /// - "favorite"
  /// - "comment"
  /// - "subscription"
  /// - "playlistItem"
  /// - "recommendation"
  /// - "bulletin"
  /// - "social"
  /// - "channelItem"
  /// - "promotedItem"
  core.String? type;

  ActivitySnippet({
    this.channelId,
    this.channelTitle,
    this.description,
    this.groupId,
    this.publishedAt,
    this.thumbnails,
    this.title,
    this.type,
  });

  ActivitySnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          groupId: _json.containsKey('groupId')
              ? _json['groupId'] as core.String
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (description != null) 'description': description!,
        if (groupId != null) 'groupId': groupId!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// A *caption* resource represents a YouTube caption track.
///
/// A caption track is associated with exactly one YouTube video.
class Caption {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the caption track.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#caption".
  core.String? kind;

  /// The snippet object contains basic details about the caption.
  CaptionSnippet? snippet;

  Caption({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  Caption.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? CaptionSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class CaptionListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of captions that match the request criteria.
  core.List<Caption>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#captionListResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  CaptionListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  CaptionListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Caption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a caption track, such as its language and name.
class CaptionSnippet {
  /// The type of audio track associated with the caption track.
  /// Possible string values are:
  /// - "unknown"
  /// - "primary"
  /// - "commentary"
  /// - "descriptive"
  core.String? audioTrackType;

  /// The reason that YouTube failed to process the caption track.
  ///
  /// This property is only present if the state property's value is failed.
  /// Possible string values are:
  /// - "unknownFormat"
  /// - "unsupportedFormat"
  /// - "processingFailed"
  core.String? failureReason;

  /// Indicates whether YouTube synchronized the caption track to the audio
  /// track in the video.
  ///
  /// The value will be true if a sync was explicitly requested when the caption
  /// track was uploaded. For example, when calling the captions.insert or
  /// captions.update methods, you can set the sync parameter to true to
  /// instruct YouTube to sync the uploaded track to the video. If the value is
  /// false, YouTube uses the time codes in the uploaded caption track to
  /// determine when to display captions.
  core.bool? isAutoSynced;

  /// Indicates whether the track contains closed captions for the deaf and hard
  /// of hearing.
  ///
  /// The default value is false.
  core.bool? isCC;

  /// Indicates whether the caption track is a draft.
  ///
  /// If the value is true, then the track is not publicly visible. The default
  /// value is false. @mutable youtube.captions.insert youtube.captions.update
  core.bool? isDraft;

  /// Indicates whether caption track is formatted for "easy reader," meaning it
  /// is at a third-grade level for language learners.
  ///
  /// The default value is false.
  core.bool? isEasyReader;

  /// Indicates whether the caption track uses large text for the
  /// vision-impaired.
  ///
  /// The default value is false.
  core.bool? isLarge;

  /// The language of the caption track.
  ///
  /// The property value is a BCP-47 language tag.
  core.String? language;

  /// The date and time when the caption track was last updated.
  core.DateTime? lastUpdated;

  /// The name of the caption track.
  ///
  /// The name is intended to be visible to the user as an option during
  /// playback.
  core.String? name;

  /// The caption track's status.
  /// Possible string values are:
  /// - "serving"
  /// - "syncing"
  /// - "failed"
  core.String? status;

  /// The caption track's type.
  /// Possible string values are:
  /// - "standard"
  /// - "ASR"
  /// - "forced"
  core.String? trackKind;

  /// The ID that YouTube uses to uniquely identify the video associated with
  /// the caption track.
  ///
  /// @mutable youtube.captions.insert
  core.String? videoId;

  CaptionSnippet({
    this.audioTrackType,
    this.failureReason,
    this.isAutoSynced,
    this.isCC,
    this.isDraft,
    this.isEasyReader,
    this.isLarge,
    this.language,
    this.lastUpdated,
    this.name,
    this.status,
    this.trackKind,
    this.videoId,
  });

  CaptionSnippet.fromJson(core.Map _json)
      : this(
          audioTrackType: _json.containsKey('audioTrackType')
              ? _json['audioTrackType'] as core.String
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          isAutoSynced: _json.containsKey('isAutoSynced')
              ? _json['isAutoSynced'] as core.bool
              : null,
          isCC: _json.containsKey('isCC') ? _json['isCC'] as core.bool : null,
          isDraft: _json.containsKey('isDraft')
              ? _json['isDraft'] as core.bool
              : null,
          isEasyReader: _json.containsKey('isEasyReader')
              ? _json['isEasyReader'] as core.bool
              : null,
          isLarge: _json.containsKey('isLarge')
              ? _json['isLarge'] as core.bool
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          lastUpdated: _json.containsKey('lastUpdated')
              ? core.DateTime.parse(_json['lastUpdated'] as core.String)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          trackKind: _json.containsKey('trackKind')
              ? _json['trackKind'] as core.String
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioTrackType != null) 'audioTrackType': audioTrackType!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (isAutoSynced != null) 'isAutoSynced': isAutoSynced!,
        if (isCC != null) 'isCC': isCC!,
        if (isDraft != null) 'isDraft': isDraft!,
        if (isEasyReader != null) 'isEasyReader': isEasyReader!,
        if (isLarge != null) 'isLarge': isLarge!,
        if (language != null) 'language': language!,
        if (lastUpdated != null) 'lastUpdated': lastUpdated!.toIso8601String(),
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (trackKind != null) 'trackKind': trackKind!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// Brief description of the live stream cdn settings.
class CdnSettings {
  /// The format of the video stream that you are sending to Youtube.
  core.String? format;

  /// The frame rate of the inbound video data.
  /// Possible string values are:
  /// - "30fps"
  /// - "60fps"
  /// - "variable"
  core.String? frameRate;

  /// The ingestionInfo object contains information that YouTube provides that
  /// you need to transmit your RTMP or HTTP stream to YouTube.
  IngestionInfo? ingestionInfo;

  ///  The method or protocol used to transmit the video stream.
  /// Possible string values are:
  /// - "rtmp"
  /// - "dash"
  /// - "webrtc"
  /// - "hls"
  core.String? ingestionType;

  /// The resolution of the inbound video data.
  /// Possible string values are:
  /// - "240p"
  /// - "360p"
  /// - "480p"
  /// - "720p"
  /// - "1080p"
  /// - "1440p"
  /// - "2160p"
  /// - "variable"
  core.String? resolution;

  CdnSettings({
    this.format,
    this.frameRate,
    this.ingestionInfo,
    this.ingestionType,
    this.resolution,
  });

  CdnSettings.fromJson(core.Map _json)
      : this(
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          frameRate: _json.containsKey('frameRate')
              ? _json['frameRate'] as core.String
              : null,
          ingestionInfo: _json.containsKey('ingestionInfo')
              ? IngestionInfo.fromJson(
                  _json['ingestionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          ingestionType: _json.containsKey('ingestionType')
              ? _json['ingestionType'] as core.String
              : null,
          resolution: _json.containsKey('resolution')
              ? _json['resolution'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (ingestionInfo != null) 'ingestionInfo': ingestionInfo!,
        if (ingestionType != null) 'ingestionType': ingestionType!,
        if (resolution != null) 'resolution': resolution!,
      };
}

/// A *channel* resource contains information about a YouTube channel.
class Channel {
  /// The auditionDetails object encapsulates channel data that is relevant for
  /// YouTube Partners during the audition process.
  ChannelAuditDetails? auditDetails;

  /// The brandingSettings object encapsulates information about the branding of
  /// the channel.
  ChannelBrandingSettings? brandingSettings;

  /// The contentDetails object encapsulates information about the channel's
  /// content.
  ChannelContentDetails? contentDetails;

  /// The contentOwnerDetails object encapsulates channel data that is relevant
  /// for YouTube Partners linked with the channel.
  ChannelContentOwnerDetails? contentOwnerDetails;

  /// The conversionPings object encapsulates information about conversion pings
  /// that need to be respected by the channel.
  ChannelConversionPings? conversionPings;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the channel.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#channel".
  core.String? kind;

  /// Localizations for different languages
  core.Map<core.String, ChannelLocalization>? localizations;

  /// The snippet object contains basic details about the channel, such as its
  /// title, description, and thumbnail images.
  ChannelSnippet? snippet;

  /// The statistics object encapsulates statistics for the channel.
  ChannelStatistics? statistics;

  /// The status object encapsulates information about the privacy status of the
  /// channel.
  ChannelStatus? status;

  /// The topicDetails object encapsulates information about Freebase topics
  /// associated with the channel.
  ChannelTopicDetails? topicDetails;

  Channel({
    this.auditDetails,
    this.brandingSettings,
    this.contentDetails,
    this.contentOwnerDetails,
    this.conversionPings,
    this.etag,
    this.id,
    this.kind,
    this.localizations,
    this.snippet,
    this.statistics,
    this.status,
    this.topicDetails,
  });

  Channel.fromJson(core.Map _json)
      : this(
          auditDetails: _json.containsKey('auditDetails')
              ? ChannelAuditDetails.fromJson(
                  _json['auditDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          brandingSettings: _json.containsKey('brandingSettings')
              ? ChannelBrandingSettings.fromJson(_json['brandingSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentDetails: _json.containsKey('contentDetails')
              ? ChannelContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentOwnerDetails: _json.containsKey('contentOwnerDetails')
              ? ChannelContentOwnerDetails.fromJson(_json['contentOwnerDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          conversionPings: _json.containsKey('conversionPings')
              ? ChannelConversionPings.fromJson(_json['conversionPings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localizations: _json.containsKey('localizations')
              ? (_json['localizations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ChannelLocalization.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          snippet: _json.containsKey('snippet')
              ? ChannelSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          statistics: _json.containsKey('statistics')
              ? ChannelStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? ChannelStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          topicDetails: _json.containsKey('topicDetails')
              ? ChannelTopicDetails.fromJson(
                  _json['topicDetails'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditDetails != null) 'auditDetails': auditDetails!,
        if (brandingSettings != null) 'brandingSettings': brandingSettings!,
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (contentOwnerDetails != null)
          'contentOwnerDetails': contentOwnerDetails!,
        if (conversionPings != null) 'conversionPings': conversionPings!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (localizations != null) 'localizations': localizations!,
        if (snippet != null) 'snippet': snippet!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (topicDetails != null) 'topicDetails': topicDetails!,
      };
}

/// The auditDetails object encapsulates channel data that is relevant for
/// YouTube Partners during the audit process.
class ChannelAuditDetails {
  /// Whether or not the channel respects the community guidelines.
  core.bool? communityGuidelinesGoodStanding;

  /// Whether or not the channel has any unresolved claims.
  core.bool? contentIdClaimsGoodStanding;

  /// Whether or not the channel has any copyright strikes.
  core.bool? copyrightStrikesGoodStanding;

  ChannelAuditDetails({
    this.communityGuidelinesGoodStanding,
    this.contentIdClaimsGoodStanding,
    this.copyrightStrikesGoodStanding,
  });

  ChannelAuditDetails.fromJson(core.Map _json)
      : this(
          communityGuidelinesGoodStanding:
              _json.containsKey('communityGuidelinesGoodStanding')
                  ? _json['communityGuidelinesGoodStanding'] as core.bool
                  : null,
          contentIdClaimsGoodStanding:
              _json.containsKey('contentIdClaimsGoodStanding')
                  ? _json['contentIdClaimsGoodStanding'] as core.bool
                  : null,
          copyrightStrikesGoodStanding:
              _json.containsKey('copyrightStrikesGoodStanding')
                  ? _json['copyrightStrikesGoodStanding'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (communityGuidelinesGoodStanding != null)
          'communityGuidelinesGoodStanding': communityGuidelinesGoodStanding!,
        if (contentIdClaimsGoodStanding != null)
          'contentIdClaimsGoodStanding': contentIdClaimsGoodStanding!,
        if (copyrightStrikesGoodStanding != null)
          'copyrightStrikesGoodStanding': copyrightStrikesGoodStanding!,
      };
}

/// A channel banner returned as the response to a channel_banner.insert call.
class ChannelBannerResource {
  core.String? etag;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#channelBannerResource".
  core.String? kind;

  /// The URL of this banner image.
  core.String? url;

  ChannelBannerResource({
    this.etag,
    this.kind,
    this.url,
  });

  ChannelBannerResource.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (url != null) 'url': url!,
      };
}

/// Branding properties of a YouTube channel.
class ChannelBrandingSettings {
  /// Branding properties for the channel view.
  ChannelSettings? channel;

  /// Additional experimental branding properties.
  core.List<PropertyValue>? hints;

  /// Branding properties for branding images.
  ImageSettings? image;

  /// Branding properties for the watch page.
  WatchSettings? watch;

  ChannelBrandingSettings({
    this.channel,
    this.hints,
    this.image,
    this.watch,
  });

  ChannelBrandingSettings.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? ChannelSettings.fromJson(
                  _json['channel'] as core.Map<core.String, core.dynamic>)
              : null,
          hints: _json.containsKey('hints')
              ? (_json['hints'] as core.List)
                  .map((value) => PropertyValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? ImageSettings.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          watch: _json.containsKey('watch')
              ? WatchSettings.fromJson(
                  _json['watch'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (hints != null) 'hints': hints!,
        if (image != null) 'image': image!,
        if (watch != null) 'watch': watch!,
      };
}

class ChannelContentDetailsRelatedPlaylists {
  /// The ID of the playlist that contains the channel"s favorite videos.
  ///
  /// Use the playlistItems.insert and playlistItems.delete to add or remove
  /// items from that list.
  core.String? favorites;

  /// The ID of the playlist that contains the channel"s liked videos.
  ///
  /// Use the playlistItems.insert and playlistItems.delete to add or remove
  /// items from that list.
  core.String? likes;

  /// The ID of the playlist that contains the channel"s uploaded videos.
  ///
  /// Use the videos.insert method to upload new videos and the videos.delete
  /// method to delete previously uploaded videos.
  core.String? uploads;

  /// The ID of the playlist that contains the channel"s watch history.
  ///
  /// Use the playlistItems.insert and playlistItems.delete to add or remove
  /// items from that list.
  core.String? watchHistory;

  /// The ID of the playlist that contains the channel"s watch later playlist.
  ///
  /// Use the playlistItems.insert and playlistItems.delete to add or remove
  /// items from that list.
  core.String? watchLater;

  ChannelContentDetailsRelatedPlaylists({
    this.favorites,
    this.likes,
    this.uploads,
    this.watchHistory,
    this.watchLater,
  });

  ChannelContentDetailsRelatedPlaylists.fromJson(core.Map _json)
      : this(
          favorites: _json.containsKey('favorites')
              ? _json['favorites'] as core.String
              : null,
          likes:
              _json.containsKey('likes') ? _json['likes'] as core.String : null,
          uploads: _json.containsKey('uploads')
              ? _json['uploads'] as core.String
              : null,
          watchHistory: _json.containsKey('watchHistory')
              ? _json['watchHistory'] as core.String
              : null,
          watchLater: _json.containsKey('watchLater')
              ? _json['watchLater'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (favorites != null) 'favorites': favorites!,
        if (likes != null) 'likes': likes!,
        if (uploads != null) 'uploads': uploads!,
        if (watchHistory != null) 'watchHistory': watchHistory!,
        if (watchLater != null) 'watchLater': watchLater!,
      };
}

/// Details about the content of a channel.
class ChannelContentDetails {
  ChannelContentDetailsRelatedPlaylists? relatedPlaylists;

  ChannelContentDetails({
    this.relatedPlaylists,
  });

  ChannelContentDetails.fromJson(core.Map _json)
      : this(
          relatedPlaylists: _json.containsKey('relatedPlaylists')
              ? ChannelContentDetailsRelatedPlaylists.fromJson(
                  _json['relatedPlaylists']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relatedPlaylists != null) 'relatedPlaylists': relatedPlaylists!,
      };
}

/// The contentOwnerDetails object encapsulates channel data that is relevant
/// for YouTube Partners linked with the channel.
class ChannelContentOwnerDetails {
  /// The ID of the content owner linked to the channel.
  core.String? contentOwner;

  /// The date and time when the channel was linked to the content owner.
  core.DateTime? timeLinked;

  ChannelContentOwnerDetails({
    this.contentOwner,
    this.timeLinked,
  });

  ChannelContentOwnerDetails.fromJson(core.Map _json)
      : this(
          contentOwner: _json.containsKey('contentOwner')
              ? _json['contentOwner'] as core.String
              : null,
          timeLinked: _json.containsKey('timeLinked')
              ? core.DateTime.parse(_json['timeLinked'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentOwner != null) 'contentOwner': contentOwner!,
        if (timeLinked != null) 'timeLinked': timeLinked!.toIso8601String(),
      };
}

/// Pings that the app shall fire (authenticated by biscotti cookie).
///
/// Each ping has a context, in which the app must fire the ping, and a url
/// identifying the ping.
class ChannelConversionPing {
  /// Defines the context of the ping.
  /// Possible string values are:
  /// - "subscribe"
  /// - "unsubscribe"
  /// - "cview"
  core.String? context;

  /// The url (without the schema) that the player shall send the ping to.
  ///
  /// It's at caller's descretion to decide which schema to use (http vs https)
  /// Example of a returned url: //googleads.g.doubleclick.net/pagead/
  /// viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D
  /// cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append
  /// biscotti authentication (ms param in case of mobile, for example) to this
  /// ping.
  core.String? conversionUrl;

  ChannelConversionPing({
    this.context,
    this.conversionUrl,
  });

  ChannelConversionPing.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? _json['context'] as core.String
              : null,
          conversionUrl: _json.containsKey('conversionUrl')
              ? _json['conversionUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (conversionUrl != null) 'conversionUrl': conversionUrl!,
      };
}

/// The conversionPings object encapsulates information about conversion pings
/// that need to be respected by the channel.
class ChannelConversionPings {
  /// Pings that the app shall fire (authenticated by biscotti cookie).
  ///
  /// Each ping has a context, in which the app must fire the ping, and a url
  /// identifying the ping.
  core.List<ChannelConversionPing>? pings;

  ChannelConversionPings({
    this.pings,
  });

  ChannelConversionPings.fromJson(core.Map _json)
      : this(
          pings: _json.containsKey('pings')
              ? (_json['pings'] as core.List)
                  .map((value) => ChannelConversionPing.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pings != null) 'pings': pings!,
      };
}

class ChannelListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;
  core.List<Channel>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#channelListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  ChannelListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  ChannelListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Channel localization setting
class ChannelLocalization {
  /// The localized strings for channel's description.
  core.String? description;

  /// The localized strings for channel's title.
  core.String? title;

  ChannelLocalization({
    this.description,
    this.title,
  });

  ChannelLocalization.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

class ChannelProfileDetails {
  /// The YouTube channel ID.
  core.String? channelId;

  /// The channel's URL.
  core.String? channelUrl;

  /// The channel's display name.
  core.String? displayName;

  /// The channels's avatar URL.
  core.String? profileImageUrl;

  ChannelProfileDetails({
    this.channelId,
    this.channelUrl,
    this.displayName,
    this.profileImageUrl,
  });

  ChannelProfileDetails.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelUrl: _json.containsKey('channelUrl')
              ? _json['channelUrl'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          profileImageUrl: _json.containsKey('profileImageUrl')
              ? _json['profileImageUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelUrl != null) 'channelUrl': channelUrl!,
        if (displayName != null) 'displayName': displayName!,
        if (profileImageUrl != null) 'profileImageUrl': profileImageUrl!,
      };
}

class ChannelSection {
  /// The contentDetails object contains details about the channel section
  /// content, such as a list of playlists or channels featured in the section.
  ChannelSectionContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the channel section.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#channelSection".
  core.String? kind;

  /// Localizations for different languages
  core.Map<core.String, ChannelSectionLocalization>? localizations;

  /// The snippet object contains basic details about the channel section, such
  /// as its type, style and title.
  ChannelSectionSnippet? snippet;

  /// The targeting object contains basic targeting settings about the channel
  /// section.
  ChannelSectionTargeting? targeting;

  ChannelSection({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.localizations,
    this.snippet,
    this.targeting,
  });

  ChannelSection.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? ChannelSectionContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localizations: _json.containsKey('localizations')
              ? (_json['localizations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ChannelSectionLocalization.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          snippet: _json.containsKey('snippet')
              ? ChannelSectionSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          targeting: _json.containsKey('targeting')
              ? ChannelSectionTargeting.fromJson(
                  _json['targeting'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (localizations != null) 'localizations': localizations!,
        if (snippet != null) 'snippet': snippet!,
        if (targeting != null) 'targeting': targeting!,
      };
}

/// Details about a channelsection, including playlists and channels.
class ChannelSectionContentDetails {
  /// The channel ids for type multiple_channels.
  core.List<core.String>? channels;

  /// The playlist ids for type single_playlist and multiple_playlists.
  ///
  /// For singlePlaylist, only one playlistId is allowed.
  core.List<core.String>? playlists;

  ChannelSectionContentDetails({
    this.channels,
    this.playlists,
  });

  ChannelSectionContentDetails.fromJson(core.Map _json)
      : this(
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          playlists: _json.containsKey('playlists')
              ? (_json['playlists'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null) 'channels': channels!,
        if (playlists != null) 'playlists': playlists!,
      };
}

class ChannelSectionListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of ChannelSections that match the request criteria.
  core.List<ChannelSection>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#channelSectionListResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  ChannelSectionListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  ChannelSectionListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => ChannelSection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// ChannelSection localization setting
class ChannelSectionLocalization {
  /// The localized strings for channel section's title.
  core.String? title;

  ChannelSectionLocalization({
    this.title,
  });

  ChannelSectionLocalization.fromJson(core.Map _json)
      : this(
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (title != null) 'title': title!,
      };
}

/// Basic details about a channel section, including title, style and position.
class ChannelSectionSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that published
  /// the channel section.
  core.String? channelId;

  /// The language of the channel section's default title and description.
  core.String? defaultLanguage;

  /// Localized title, read-only.
  ChannelSectionLocalization? localized;

  /// The position of the channel section in the channel.
  core.int? position;

  /// The style of the channel section.
  /// Possible string values are:
  /// - "channelsectionStyleUnspecified"
  /// - "horizontalRow"
  /// - "verticalList"
  core.String? style;

  /// The channel section's title for multiple_playlists and multiple_channels.
  core.String? title;

  /// The type of the channel section.
  /// Possible string values are:
  /// - "channelsectionTypeUndefined"
  /// - "singlePlaylist"
  /// - "multiplePlaylists"
  /// - "popularUploads"
  /// - "recentUploads"
  /// - "likes"
  /// - "allPlaylists"
  /// - "likedPlaylists"
  /// - "recentPosts"
  /// - "recentActivity"
  /// - "liveEvents"
  /// - "upcomingEvents"
  /// - "completedEvents"
  /// - "multipleChannels"
  /// - "postedVideos"
  /// - "postedPlaylists"
  /// - "subscriptions"
  core.String? type;

  ChannelSectionSnippet({
    this.channelId,
    this.defaultLanguage,
    this.localized,
    this.position,
    this.style,
    this.title,
    this.type,
  });

  ChannelSectionSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          localized: _json.containsKey('localized')
              ? ChannelSectionLocalization.fromJson(
                  _json['localized'] as core.Map<core.String, core.dynamic>)
              : null,
          position: _json.containsKey('position')
              ? _json['position'] as core.int
              : null,
          style:
              _json.containsKey('style') ? _json['style'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (localized != null) 'localized': localized!,
        if (position != null) 'position': position!,
        if (style != null) 'style': style!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// ChannelSection targeting setting.
class ChannelSectionTargeting {
  /// The country the channel section is targeting.
  core.List<core.String>? countries;

  /// The language the channel section is targeting.
  core.List<core.String>? languages;

  /// The region the channel section is targeting.
  core.List<core.String>? regions;

  ChannelSectionTargeting({
    this.countries,
    this.languages,
    this.regions,
  });

  ChannelSectionTargeting.fromJson(core.Map _json)
      : this(
          countries: _json.containsKey('countries')
              ? (_json['countries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languages: _json.containsKey('languages')
              ? (_json['languages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          regions: _json.containsKey('regions')
              ? (_json['regions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countries != null) 'countries': countries!,
        if (languages != null) 'languages': languages!,
        if (regions != null) 'regions': regions!,
      };
}

/// Branding properties for the channel view.
class ChannelSettings {
  /// The country of the channel.
  core.String? country;
  core.String? defaultLanguage;

  /// Which content tab users should see when viewing the channel.
  core.String? defaultTab;

  /// Specifies the channel description.
  core.String? description;

  /// Title for the featured channels tab.
  core.String? featuredChannelsTitle;

  /// The list of featured channels.
  core.List<core.String>? featuredChannelsUrls;

  /// Lists keywords associated with the channel, comma-separated.
  core.String? keywords;

  /// Whether user-submitted comments left on the channel page need to be
  /// approved by the channel owner to be publicly visible.
  core.bool? moderateComments;

  /// A prominent color that can be rendered on this channel page.
  core.String? profileColor;

  /// Whether the tab to browse the videos should be displayed.
  core.bool? showBrowseView;

  /// Whether related channels should be proposed.
  core.bool? showRelatedChannels;

  /// Specifies the channel title.
  core.String? title;

  /// The ID for a Google Analytics account to track and measure traffic to the
  /// channels.
  core.String? trackingAnalyticsAccountId;

  /// The trailer of the channel, for users that are not subscribers.
  core.String? unsubscribedTrailer;

  ChannelSettings({
    this.country,
    this.defaultLanguage,
    this.defaultTab,
    this.description,
    this.featuredChannelsTitle,
    this.featuredChannelsUrls,
    this.keywords,
    this.moderateComments,
    this.profileColor,
    this.showBrowseView,
    this.showRelatedChannels,
    this.title,
    this.trackingAnalyticsAccountId,
    this.unsubscribedTrailer,
  });

  ChannelSettings.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          defaultTab: _json.containsKey('defaultTab')
              ? _json['defaultTab'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          featuredChannelsTitle: _json.containsKey('featuredChannelsTitle')
              ? _json['featuredChannelsTitle'] as core.String
              : null,
          featuredChannelsUrls: _json.containsKey('featuredChannelsUrls')
              ? (_json['featuredChannelsUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          keywords: _json.containsKey('keywords')
              ? _json['keywords'] as core.String
              : null,
          moderateComments: _json.containsKey('moderateComments')
              ? _json['moderateComments'] as core.bool
              : null,
          profileColor: _json.containsKey('profileColor')
              ? _json['profileColor'] as core.String
              : null,
          showBrowseView: _json.containsKey('showBrowseView')
              ? _json['showBrowseView'] as core.bool
              : null,
          showRelatedChannels: _json.containsKey('showRelatedChannels')
              ? _json['showRelatedChannels'] as core.bool
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          trackingAnalyticsAccountId:
              _json.containsKey('trackingAnalyticsAccountId')
                  ? _json['trackingAnalyticsAccountId'] as core.String
                  : null,
          unsubscribedTrailer: _json.containsKey('unsubscribedTrailer')
              ? _json['unsubscribedTrailer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (defaultTab != null) 'defaultTab': defaultTab!,
        if (description != null) 'description': description!,
        if (featuredChannelsTitle != null)
          'featuredChannelsTitle': featuredChannelsTitle!,
        if (featuredChannelsUrls != null)
          'featuredChannelsUrls': featuredChannelsUrls!,
        if (keywords != null) 'keywords': keywords!,
        if (moderateComments != null) 'moderateComments': moderateComments!,
        if (profileColor != null) 'profileColor': profileColor!,
        if (showBrowseView != null) 'showBrowseView': showBrowseView!,
        if (showRelatedChannels != null)
          'showRelatedChannels': showRelatedChannels!,
        if (title != null) 'title': title!,
        if (trackingAnalyticsAccountId != null)
          'trackingAnalyticsAccountId': trackingAnalyticsAccountId!,
        if (unsubscribedTrailer != null)
          'unsubscribedTrailer': unsubscribedTrailer!,
      };
}

/// Basic details about a channel, including title, description and thumbnails.
class ChannelSnippet {
  /// The country of the channel.
  core.String? country;

  /// The custom url of the channel.
  core.String? customUrl;

  /// The language of the channel's default title and description.
  core.String? defaultLanguage;

  /// The description of the channel.
  core.String? description;

  /// Localized title and description, read-only.
  ChannelLocalization? localized;

  /// The date and time that the channel was created.
  core.DateTime? publishedAt;

  /// A map of thumbnail images associated with the channel.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail. When displaying thumbnails in your application, make sure that
  /// your code uses the image URLs exactly as they are returned in API
  /// responses. For example, your application should not use the http domain
  /// instead of the https domain in a URL returned in an API response.
  /// Beginning in July 2018, channel thumbnail URLs will only be available in
  /// the https domain, which is how the URLs appear in API responses. After
  /// that time, you might see broken images in your application if it tries to
  /// load YouTube images from the http domain. Thumbnail images might be empty
  /// for newly created channels and might take up to one day to populate.
  ThumbnailDetails? thumbnails;

  /// The channel's title.
  core.String? title;

  ChannelSnippet({
    this.country,
    this.customUrl,
    this.defaultLanguage,
    this.description,
    this.localized,
    this.publishedAt,
    this.thumbnails,
    this.title,
  });

  ChannelSnippet.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          customUrl: _json.containsKey('customUrl')
              ? _json['customUrl'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          localized: _json.containsKey('localized')
              ? ChannelLocalization.fromJson(
                  _json['localized'] as core.Map<core.String, core.dynamic>)
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (customUrl != null) 'customUrl': customUrl!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (description != null) 'description': description!,
        if (localized != null) 'localized': localized!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// Statistics about a channel: number of subscribers, number of videos in the
/// channel, etc.
class ChannelStatistics {
  /// The number of comments for the channel.
  core.String? commentCount;

  /// Whether or not the number of subscribers is shown for this user.
  core.bool? hiddenSubscriberCount;

  /// The number of subscribers that the channel has.
  core.String? subscriberCount;

  /// The number of videos uploaded to the channel.
  core.String? videoCount;

  /// The number of times the channel has been viewed.
  core.String? viewCount;

  ChannelStatistics({
    this.commentCount,
    this.hiddenSubscriberCount,
    this.subscriberCount,
    this.videoCount,
    this.viewCount,
  });

  ChannelStatistics.fromJson(core.Map _json)
      : this(
          commentCount: _json.containsKey('commentCount')
              ? _json['commentCount'] as core.String
              : null,
          hiddenSubscriberCount: _json.containsKey('hiddenSubscriberCount')
              ? _json['hiddenSubscriberCount'] as core.bool
              : null,
          subscriberCount: _json.containsKey('subscriberCount')
              ? _json['subscriberCount'] as core.String
              : null,
          videoCount: _json.containsKey('videoCount')
              ? _json['videoCount'] as core.String
              : null,
          viewCount: _json.containsKey('viewCount')
              ? _json['viewCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commentCount != null) 'commentCount': commentCount!,
        if (hiddenSubscriberCount != null)
          'hiddenSubscriberCount': hiddenSubscriberCount!,
        if (subscriberCount != null) 'subscriberCount': subscriberCount!,
        if (videoCount != null) 'videoCount': videoCount!,
        if (viewCount != null) 'viewCount': viewCount!,
      };
}

/// JSON template for the status part of a channel.
class ChannelStatus {
  /// If true, then the user is linked to either a YouTube username or G+
  /// account.
  ///
  /// Otherwise, the user doesn't have a public YouTube identity.
  core.bool? isLinked;

  /// The long uploads status of this channel.
  ///
  /// See https://support.google.com/youtube/answer/71673 for more information.
  /// Possible string values are:
  /// - "longUploadsUnspecified"
  /// - "allowed"
  /// - "eligible"
  /// - "disallowed"
  core.String? longUploadsStatus;
  core.bool? madeForKids;

  /// Privacy status of the channel.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String? privacyStatus;
  core.bool? selfDeclaredMadeForKids;

  ChannelStatus({
    this.isLinked,
    this.longUploadsStatus,
    this.madeForKids,
    this.privacyStatus,
    this.selfDeclaredMadeForKids,
  });

  ChannelStatus.fromJson(core.Map _json)
      : this(
          isLinked: _json.containsKey('isLinked')
              ? _json['isLinked'] as core.bool
              : null,
          longUploadsStatus: _json.containsKey('longUploadsStatus')
              ? _json['longUploadsStatus'] as core.String
              : null,
          madeForKids: _json.containsKey('madeForKids')
              ? _json['madeForKids'] as core.bool
              : null,
          privacyStatus: _json.containsKey('privacyStatus')
              ? _json['privacyStatus'] as core.String
              : null,
          selfDeclaredMadeForKids: _json.containsKey('selfDeclaredMadeForKids')
              ? _json['selfDeclaredMadeForKids'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isLinked != null) 'isLinked': isLinked!,
        if (longUploadsStatus != null) 'longUploadsStatus': longUploadsStatus!,
        if (madeForKids != null) 'madeForKids': madeForKids!,
        if (privacyStatus != null) 'privacyStatus': privacyStatus!,
        if (selfDeclaredMadeForKids != null)
          'selfDeclaredMadeForKids': selfDeclaredMadeForKids!,
      };
}

/// Information specific to a store on a merchandising platform linked to a
/// YouTube channel.
class ChannelToStoreLinkDetails {
  /// Name of the store.
  core.String? storeName;

  /// Landing page of the store.
  core.String? storeUrl;

  ChannelToStoreLinkDetails({
    this.storeName,
    this.storeUrl,
  });

  ChannelToStoreLinkDetails.fromJson(core.Map _json)
      : this(
          storeName: _json.containsKey('storeName')
              ? _json['storeName'] as core.String
              : null,
          storeUrl: _json.containsKey('storeUrl')
              ? _json['storeUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storeName != null) 'storeName': storeName!,
        if (storeUrl != null) 'storeUrl': storeUrl!,
      };
}

/// Freebase topic information related to the channel.
class ChannelTopicDetails {
  /// A list of Wikipedia URLs that describe the channel's content.
  core.List<core.String>? topicCategories;

  /// A list of Freebase topic IDs associated with the channel.
  ///
  /// You can retrieve information about each topic using the Freebase Topic
  /// API.
  core.List<core.String>? topicIds;

  ChannelTopicDetails({
    this.topicCategories,
    this.topicIds,
  });

  ChannelTopicDetails.fromJson(core.Map _json)
      : this(
          topicCategories: _json.containsKey('topicCategories')
              ? (_json['topicCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topicIds: _json.containsKey('topicIds')
              ? (_json['topicIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topicCategories != null) 'topicCategories': topicCategories!,
        if (topicIds != null) 'topicIds': topicIds!,
      };
}

/// A *comment* represents a single YouTube comment.
class Comment {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the comment.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#comment".
  core.String? kind;

  /// The snippet object contains basic details about the comment.
  CommentSnippet? snippet;

  Comment({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  Comment.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? CommentSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class CommentListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of comments that match the request criteria.
  core.List<Comment>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#commentListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  CommentListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.tokenPagination,
    this.visitorId,
  });

  CommentListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a comment, such as its author and text.
class CommentSnippet {
  CommentSnippetAuthorChannelId? authorChannelId;

  /// Link to the author's YouTube channel, if any.
  core.String? authorChannelUrl;

  /// The name of the user who posted the comment.
  core.String? authorDisplayName;

  /// The URL for the avatar of the user who posted the comment.
  core.String? authorProfileImageUrl;

  /// Whether the current viewer can rate this comment.
  core.bool? canRate;

  /// The id of the corresponding YouTube channel.
  ///
  /// In case of a channel comment this is the channel the comment refers to. In
  /// case of a video comment it's the video's channel.
  core.String? channelId;

  /// The total number of likes this comment has received.
  core.int? likeCount;

  /// The comment's moderation status.
  ///
  /// Will not be set if the comments were requested through the id filter.
  /// Possible string values are:
  /// - "published" : The comment is available for public display.
  /// - "heldForReview" : The comment is awaiting review by a moderator.
  /// - "likelySpam"
  /// - "rejected" : The comment is unfit for display.
  core.String? moderationStatus;

  /// The unique id of the parent comment, only set for replies.
  core.String? parentId;

  /// The date and time when the comment was originally published.
  core.DateTime? publishedAt;

  /// The comment's text.
  ///
  /// The format is either plain text or HTML dependent on what has been
  /// requested. Even the plain text representation may differ from the text
  /// originally posted in that it may replace video links with video titles
  /// etc.
  core.String? textDisplay;

  /// The comment's original raw text as initially posted or last updated.
  ///
  /// The original text will only be returned if it is accessible to the viewer,
  /// which is only guaranteed if the viewer is the comment's author.
  core.String? textOriginal;

  /// The date and time when the comment was last updated.
  core.DateTime? updatedAt;

  /// The ID of the video the comment refers to, if any.
  core.String? videoId;

  /// The rating the viewer has given to this comment.
  ///
  /// For the time being this will never return RATE_TYPE_DISLIKE and instead
  /// return RATE_TYPE_NONE. This may change in the future.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  core.String? viewerRating;

  CommentSnippet({
    this.authorChannelId,
    this.authorChannelUrl,
    this.authorDisplayName,
    this.authorProfileImageUrl,
    this.canRate,
    this.channelId,
    this.likeCount,
    this.moderationStatus,
    this.parentId,
    this.publishedAt,
    this.textDisplay,
    this.textOriginal,
    this.updatedAt,
    this.videoId,
    this.viewerRating,
  });

  CommentSnippet.fromJson(core.Map _json)
      : this(
          authorChannelId: _json.containsKey('authorChannelId')
              ? CommentSnippetAuthorChannelId.fromJson(_json['authorChannelId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          authorChannelUrl: _json.containsKey('authorChannelUrl')
              ? _json['authorChannelUrl'] as core.String
              : null,
          authorDisplayName: _json.containsKey('authorDisplayName')
              ? _json['authorDisplayName'] as core.String
              : null,
          authorProfileImageUrl: _json.containsKey('authorProfileImageUrl')
              ? _json['authorProfileImageUrl'] as core.String
              : null,
          canRate: _json.containsKey('canRate')
              ? _json['canRate'] as core.bool
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          likeCount: _json.containsKey('likeCount')
              ? _json['likeCount'] as core.int
              : null,
          moderationStatus: _json.containsKey('moderationStatus')
              ? _json['moderationStatus'] as core.String
              : null,
          parentId: _json.containsKey('parentId')
              ? _json['parentId'] as core.String
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          textDisplay: _json.containsKey('textDisplay')
              ? _json['textDisplay'] as core.String
              : null,
          textOriginal: _json.containsKey('textOriginal')
              ? _json['textOriginal'] as core.String
              : null,
          updatedAt: _json.containsKey('updatedAt')
              ? core.DateTime.parse(_json['updatedAt'] as core.String)
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
          viewerRating: _json.containsKey('viewerRating')
              ? _json['viewerRating'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorChannelId != null) 'authorChannelId': authorChannelId!,
        if (authorChannelUrl != null) 'authorChannelUrl': authorChannelUrl!,
        if (authorDisplayName != null) 'authorDisplayName': authorDisplayName!,
        if (authorProfileImageUrl != null)
          'authorProfileImageUrl': authorProfileImageUrl!,
        if (canRate != null) 'canRate': canRate!,
        if (channelId != null) 'channelId': channelId!,
        if (likeCount != null) 'likeCount': likeCount!,
        if (moderationStatus != null) 'moderationStatus': moderationStatus!,
        if (parentId != null) 'parentId': parentId!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (textDisplay != null) 'textDisplay': textDisplay!,
        if (textOriginal != null) 'textOriginal': textOriginal!,
        if (updatedAt != null) 'updatedAt': updatedAt!.toIso8601String(),
        if (videoId != null) 'videoId': videoId!,
        if (viewerRating != null) 'viewerRating': viewerRating!,
      };
}

/// The id of the author's YouTube channel, if any.
typedef CommentSnippetAuthorChannelId = $Shared11;

/// A *comment thread* represents information that applies to a top level
/// comment and all its replies.
///
/// It can also include the top level comment itself and some of the replies.
class CommentThread {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the comment thread.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#commentThread".
  core.String? kind;

  /// The replies object contains a limited number of replies (if any) to the
  /// top level comment found in the snippet.
  CommentThreadReplies? replies;

  /// The snippet object contains basic details about the comment thread and
  /// also the top level comment.
  CommentThreadSnippet? snippet;

  CommentThread({
    this.etag,
    this.id,
    this.kind,
    this.replies,
    this.snippet,
  });

  CommentThread.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          replies: _json.containsKey('replies')
              ? CommentThreadReplies.fromJson(
                  _json['replies'] as core.Map<core.String, core.dynamic>)
              : null,
          snippet: _json.containsKey('snippet')
              ? CommentThreadSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (replies != null) 'replies': replies!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class CommentThreadListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of comment threads that match the request criteria.
  core.List<CommentThread>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#commentThreadListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  CommentThreadListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.tokenPagination,
    this.visitorId,
  });

  CommentThreadListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => CommentThread.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Comments written in (direct or indirect) reply to the top level comment.
class CommentThreadReplies {
  /// A limited number of replies.
  ///
  /// Unless the number of replies returned equals total_reply_count in the
  /// snippet the returned replies are only a subset of the total number of
  /// replies.
  core.List<Comment>? comments;

  CommentThreadReplies({
    this.comments,
  });

  CommentThreadReplies.fromJson(core.Map _json)
      : this(
          comments: _json.containsKey('comments')
              ? (_json['comments'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
      };
}

/// Basic details about a comment thread.
class CommentThreadSnippet {
  /// Whether the current viewer of the thread can reply to it.
  ///
  /// This is viewer specific - other viewers may see a different value for this
  /// field.
  core.bool? canReply;

  /// The YouTube channel the comments in the thread refer to or the channel
  /// with the video the comments refer to.
  ///
  /// If video_id isn't set the comments refer to the channel itself.
  core.String? channelId;

  /// Whether the thread (and therefore all its comments) is visible to all
  /// YouTube users.
  core.bool? isPublic;

  /// The top level comment of this thread.
  Comment? topLevelComment;

  /// The total number of replies (not including the top level comment).
  core.int? totalReplyCount;

  /// The ID of the video the comments refer to, if any.
  ///
  /// No video_id implies a channel discussion comment.
  core.String? videoId;

  CommentThreadSnippet({
    this.canReply,
    this.channelId,
    this.isPublic,
    this.topLevelComment,
    this.totalReplyCount,
    this.videoId,
  });

  CommentThreadSnippet.fromJson(core.Map _json)
      : this(
          canReply: _json.containsKey('canReply')
              ? _json['canReply'] as core.bool
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          isPublic: _json.containsKey('isPublic')
              ? _json['isPublic'] as core.bool
              : null,
          topLevelComment: _json.containsKey('topLevelComment')
              ? Comment.fromJson(_json['topLevelComment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          totalReplyCount: _json.containsKey('totalReplyCount')
              ? _json['totalReplyCount'] as core.int
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canReply != null) 'canReply': canReply!,
        if (channelId != null) 'channelId': channelId!,
        if (isPublic != null) 'isPublic': isPublic!,
        if (topLevelComment != null) 'topLevelComment': topLevelComment!,
        if (totalReplyCount != null) 'totalReplyCount': totalReplyCount!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// Ratings schemes.
///
/// The country-specific ratings are mostly for movies and shows. LINT.IfChange
class ContentRating {
  /// The video's Australian Classification Board (ACB) or Australian
  /// Communications and Media Authority (ACMA) rating.
  ///
  /// ACMA ratings are used to classify children's television programming.
  /// Possible string values are:
  /// - "acbUnspecified"
  /// - "acbE" : E
  /// - "acbP" : Programs that have been given a P classification by the
  /// Australian Communications and Media Authority. These programs are intended
  /// for preschool children.
  /// - "acbC" : Programs that have been given a C classification by the
  /// Australian Communications and Media Authority. These programs are intended
  /// for children (other than preschool children) who are younger than 14 years
  /// of age.
  /// - "acbG" : G
  /// - "acbPg" : PG
  /// - "acbM" : M
  /// - "acbMa15plus" : MA15+
  /// - "acbR18plus" : R18+
  /// - "acbUnrated"
  core.String? acbRating;

  /// The video's rating from Italy's Autorità per le Garanzie nelle
  /// Comunicazioni (AGCOM).
  /// Possible string values are:
  /// - "agcomUnspecified"
  /// - "agcomT" : T
  /// - "agcomVm14" : VM14
  /// - "agcomVm18" : VM18
  /// - "agcomUnrated"
  core.String? agcomRating;

  /// The video's Anatel (Asociación Nacional de Televisión) rating for Chilean
  /// television.
  /// Possible string values are:
  /// - "anatelUnspecified"
  /// - "anatelF" : F
  /// - "anatelI" : I
  /// - "anatelI7" : I-7
  /// - "anatelI10" : I-10
  /// - "anatelI12" : I-12
  /// - "anatelR" : R
  /// - "anatelA" : A
  /// - "anatelUnrated"
  core.String? anatelRating;

  /// The video's British Board of Film Classification (BBFC) rating.
  /// Possible string values are:
  /// - "bbfcUnspecified"
  /// - "bbfcU" : U
  /// - "bbfcPg" : PG
  /// - "bbfc12a" : 12A
  /// - "bbfc12" : 12
  /// - "bbfc15" : 15
  /// - "bbfc18" : 18
  /// - "bbfcR18" : R18
  /// - "bbfcUnrated"
  core.String? bbfcRating;

  /// The video's rating from Thailand's Board of Film and Video Censors.
  /// Possible string values are:
  /// - "bfvcUnspecified"
  /// - "bfvcG" : G
  /// - "bfvcE" : E
  /// - "bfvc13" : 13
  /// - "bfvc15" : 15
  /// - "bfvc18" : 18
  /// - "bfvc20" : 20
  /// - "bfvcB" : B
  /// - "bfvcUnrated"
  core.String? bfvcRating;

  /// The video's rating from the Austrian Board of Media Classification
  /// (Bundesministerium für Unterricht, Kunst und Kultur).
  /// Possible string values are:
  /// - "bmukkUnspecified"
  /// - "bmukkAa" : Unrestricted
  /// - "bmukk6" : 6+
  /// - "bmukk8" : 8+
  /// - "bmukk10" : 10+
  /// - "bmukk12" : 12+
  /// - "bmukk14" : 14+
  /// - "bmukk16" : 16+
  /// - "bmukkUnrated"
  core.String? bmukkRating;

  /// Rating system for Canadian TV - Canadian TV Classification System The
  /// video's rating from the Canadian Radio-Television and Telecommunications
  /// Commission (CRTC) for Canadian English-language broadcasts.
  ///
  /// For more information, see the Canadian Broadcast Standards Council
  /// website.
  /// Possible string values are:
  /// - "catvUnspecified"
  /// - "catvC" : C
  /// - "catvC8" : C8
  /// - "catvG" : G
  /// - "catvPg" : PG
  /// - "catv14plus" : 14+
  /// - "catv18plus" : 18+
  /// - "catvUnrated"
  /// - "catvE"
  core.String? catvRating;

  /// The video's rating from the Canadian Radio-Television and
  /// Telecommunications Commission (CRTC) for Canadian French-language
  /// broadcasts.
  ///
  /// For more information, see the Canadian Broadcast Standards Council
  /// website.
  /// Possible string values are:
  /// - "catvfrUnspecified"
  /// - "catvfrG" : G
  /// - "catvfr8plus" : 8+
  /// - "catvfr13plus" : 13+
  /// - "catvfr16plus" : 16+
  /// - "catvfr18plus" : 18+
  /// - "catvfrUnrated"
  /// - "catvfrE"
  core.String? catvfrRating;

  /// The video's Central Board of Film Certification (CBFC - India) rating.
  /// Possible string values are:
  /// - "cbfcUnspecified"
  /// - "cbfcU" : U
  /// - "cbfcUA" : U/A
  /// - "cbfcA" : A
  /// - "cbfcS" : S
  /// - "cbfcUnrated"
  core.String? cbfcRating;

  /// The video's Consejo de Calificación Cinematográfica (Chile) rating.
  /// Possible string values are:
  /// - "cccUnspecified"
  /// - "cccTe" : Todo espectador
  /// - "ccc6" : 6+ - Inconveniente para menores de 7 años
  /// - "ccc14" : 14+
  /// - "ccc18" : 18+
  /// - "ccc18v" : 18+ - contenido excesivamente violento
  /// - "ccc18s" : 18+ - contenido pornográfico
  /// - "cccUnrated"
  core.String? cccRating;

  /// The video's rating from Portugal's Comissão de Classificação de
  /// Espect´culos.
  /// Possible string values are:
  /// - "cceUnspecified"
  /// - "cceM4" : 4
  /// - "cceM6" : 6
  /// - "cceM12" : 12
  /// - "cceM16" : 16
  /// - "cceM18" : 18
  /// - "cceUnrated"
  /// - "cceM14" : 14
  core.String? cceRating;

  /// The video's rating in Switzerland.
  /// Possible string values are:
  /// - "chfilmUnspecified"
  /// - "chfilm0" : 0
  /// - "chfilm6" : 6
  /// - "chfilm12" : 12
  /// - "chfilm16" : 16
  /// - "chfilm18" : 18
  /// - "chfilmUnrated"
  core.String? chfilmRating;

  /// The video's Canadian Home Video Rating System (CHVRS) rating.
  /// Possible string values are:
  /// - "chvrsUnspecified"
  /// - "chvrsG" : G
  /// - "chvrsPg" : PG
  /// - "chvrs14a" : 14A
  /// - "chvrs18a" : 18A
  /// - "chvrsR" : R
  /// - "chvrsE" : E
  /// - "chvrsUnrated"
  core.String? chvrsRating;

  /// The video's rating from the Commission de Contrôle des Films (Belgium).
  /// Possible string values are:
  /// - "cicfUnspecified"
  /// - "cicfE" : E
  /// - "cicfKtEa" : KT/EA
  /// - "cicfKntEna" : KNT/ENA
  /// - "cicfUnrated"
  core.String? cicfRating;

  /// The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI
  /// (CNA).
  /// Possible string values are:
  /// - "cnaUnspecified"
  /// - "cnaAp" : AP
  /// - "cna12" : 12
  /// - "cna15" : 15
  /// - "cna18" : 18
  /// - "cna18plus" : 18+
  /// - "cnaUnrated"
  core.String? cnaRating;

  /// Rating system in France - Commission de classification cinematographique
  /// Possible string values are:
  /// - "cncUnspecified"
  /// - "cncT" : T
  /// - "cnc10" : 10
  /// - "cnc12" : 12
  /// - "cnc16" : 16
  /// - "cnc18" : 18
  /// - "cncE" : E
  /// - "cncInterdiction" : interdiction
  /// - "cncUnrated"
  core.String? cncRating;

  /// The video's rating from France's Conseil supérieur de l’audiovisuel, which
  /// rates broadcast content.
  /// Possible string values are:
  /// - "csaUnspecified"
  /// - "csaT" : T
  /// - "csa10" : 10
  /// - "csa12" : 12
  /// - "csa16" : 16
  /// - "csa18" : 18
  /// - "csaInterdiction" : Interdiction
  /// - "csaUnrated"
  core.String? csaRating;

  /// The video's rating from Luxembourg's Commission de surveillance de la
  /// classification des films (CSCF).
  /// Possible string values are:
  /// - "cscfUnspecified"
  /// - "cscfAl" : AL
  /// - "cscfA" : A
  /// - "cscf6" : 6
  /// - "cscf9" : 9
  /// - "cscf12" : 12
  /// - "cscf16" : 16
  /// - "cscf18" : 18
  /// - "cscfUnrated"
  core.String? cscfRating;

  /// The video's rating in the Czech Republic.
  /// Possible string values are:
  /// - "czfilmUnspecified"
  /// - "czfilmU" : U
  /// - "czfilm12" : 12
  /// - "czfilm14" : 14
  /// - "czfilm18" : 18
  /// - "czfilmUnrated"
  core.String? czfilmRating;

  /// The video's Departamento de Justiça, Classificação, Qualificação e Títulos
  /// (DJCQT - Brazil) rating.
  /// Possible string values are:
  /// - "djctqUnspecified"
  /// - "djctqL" : L
  /// - "djctq10" : 10
  /// - "djctq12" : 12
  /// - "djctq14" : 14
  /// - "djctq16" : 16
  /// - "djctq18" : 18
  /// - "djctqEr"
  /// - "djctqL10"
  /// - "djctqL12"
  /// - "djctqL14"
  /// - "djctqL16"
  /// - "djctqL18"
  /// - "djctq1012"
  /// - "djctq1014"
  /// - "djctq1016"
  /// - "djctq1018"
  /// - "djctq1214"
  /// - "djctq1216"
  /// - "djctq1218"
  /// - "djctq1416"
  /// - "djctq1418"
  /// - "djctq1618"
  /// - "djctqUnrated"
  core.String? djctqRating;

  /// Reasons that explain why the video received its DJCQT (Brazil) rating.
  core.List<core.String>? djctqRatingReasons;

  /// Rating system in Turkey - Evaluation and Classification Board of the
  /// Ministry of Culture and Tourism
  /// Possible string values are:
  /// - "ecbmctUnspecified"
  /// - "ecbmctG" : G
  /// - "ecbmct7a" : 7A
  /// - "ecbmct7plus" : 7+
  /// - "ecbmct13a" : 13A
  /// - "ecbmct13plus" : 13+
  /// - "ecbmct15a" : 15A
  /// - "ecbmct15plus" : 15+
  /// - "ecbmct18plus" : 18+
  /// - "ecbmctUnrated"
  core.String? ecbmctRating;

  /// The video's rating in Estonia.
  /// Possible string values are:
  /// - "eefilmUnspecified"
  /// - "eefilmPere" : Pere
  /// - "eefilmL" : L
  /// - "eefilmMs6" : MS-6
  /// - "eefilmK6" : K-6
  /// - "eefilmMs12" : MS-12
  /// - "eefilmK12" : K-12
  /// - "eefilmK14" : K-14
  /// - "eefilmK16" : K-16
  /// - "eefilmUnrated"
  core.String? eefilmRating;

  /// The video's rating in Egypt.
  /// Possible string values are:
  /// - "egfilmUnspecified"
  /// - "egfilmGn" : GN
  /// - "egfilm18" : 18
  /// - "egfilmBn" : BN
  /// - "egfilmUnrated"
  core.String? egfilmRating;

  /// The video's Eirin (映倫) rating.
  ///
  /// Eirin is the Japanese rating system.
  /// Possible string values are:
  /// - "eirinUnspecified"
  /// - "eirinG" : G
  /// - "eirinPg12" : PG-12
  /// - "eirinR15plus" : R15+
  /// - "eirinR18plus" : R18+
  /// - "eirinUnrated"
  core.String? eirinRating;

  /// The video's rating from Malaysia's Film Censorship Board.
  /// Possible string values are:
  /// - "fcbmUnspecified"
  /// - "fcbmU" : U
  /// - "fcbmPg13" : PG13
  /// - "fcbmP13" : P13
  /// - "fcbm18" : 18
  /// - "fcbm18sx" : 18SX
  /// - "fcbm18pa" : 18PA
  /// - "fcbm18sg" : 18SG
  /// - "fcbm18pl" : 18PL
  /// - "fcbmUnrated"
  core.String? fcbmRating;

  /// The video's rating from Hong Kong's Office for Film, Newspaper and Article
  /// Administration.
  /// Possible string values are:
  /// - "fcoUnspecified"
  /// - "fcoI" : I
  /// - "fcoIia" : IIA
  /// - "fcoIib" : IIB
  /// - "fcoIi" : II
  /// - "fcoIii" : III
  /// - "fcoUnrated"
  core.String? fcoRating;

  /// This property has been deprecated.
  ///
  /// Use the contentDetails.contentRating.cncRating instead.
  /// Possible string values are:
  /// - "fmocUnspecified"
  /// - "fmocU" : U
  /// - "fmoc10" : 10
  /// - "fmoc12" : 12
  /// - "fmoc16" : 16
  /// - "fmoc18" : 18
  /// - "fmocE" : E
  /// - "fmocUnrated"
  core.String? fmocRating;

  /// The video's rating from South Africa's Film and Publication Board.
  /// Possible string values are:
  /// - "fpbUnspecified"
  /// - "fpbA" : A
  /// - "fpbPg" : PG
  /// - "fpb79Pg" : 7-9PG
  /// - "fpb1012Pg" : 10-12PG
  /// - "fpb13" : 13
  /// - "fpb16" : 16
  /// - "fpb18" : 18
  /// - "fpbX18" : X18
  /// - "fpbXx" : XX
  /// - "fpbUnrated"
  /// - "fpb10" : 10
  core.String? fpbRating;

  /// Reasons that explain why the video received its FPB (South Africa) rating.
  core.List<core.String>? fpbRatingReasons;

  /// The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany)
  /// rating.
  /// Possible string values are:
  /// - "fskUnspecified"
  /// - "fsk0" : FSK 0
  /// - "fsk6" : FSK 6
  /// - "fsk12" : FSK 12
  /// - "fsk16" : FSK 16
  /// - "fsk18" : FSK 18
  /// - "fskUnrated"
  core.String? fskRating;

  /// The video's rating in Greece.
  /// Possible string values are:
  /// - "grfilmUnspecified"
  /// - "grfilmK" : K
  /// - "grfilmE" : E
  /// - "grfilmK12" : K-12
  /// - "grfilmK13" : K-13
  /// - "grfilmK15" : K-15
  /// - "grfilmK17" : K-17
  /// - "grfilmK18" : K-18
  /// - "grfilmUnrated"
  core.String? grfilmRating;

  /// The video's Instituto de la Cinematografía y de las Artes Audiovisuales
  /// (ICAA - Spain) rating.
  /// Possible string values are:
  /// - "icaaUnspecified"
  /// - "icaaApta" : APTA
  /// - "icaa7" : 7
  /// - "icaa12" : 12
  /// - "icaa13" : 13
  /// - "icaa16" : 16
  /// - "icaa18" : 18
  /// - "icaaX" : X
  /// - "icaaUnrated"
  core.String? icaaRating;

  /// The video's Irish Film Classification Office (IFCO - Ireland) rating.
  ///
  /// See the IFCO website for more information.
  /// Possible string values are:
  /// - "ifcoUnspecified"
  /// - "ifcoG" : G
  /// - "ifcoPg" : PG
  /// - "ifco12" : 12
  /// - "ifco12a" : 12A
  /// - "ifco15" : 15
  /// - "ifco15a" : 15A
  /// - "ifco16" : 16
  /// - "ifco18" : 18
  /// - "ifcoUnrated"
  core.String? ifcoRating;

  /// The video's rating in Israel.
  /// Possible string values are:
  /// - "ilfilmUnspecified"
  /// - "ilfilmAa" : AA
  /// - "ilfilm12" : 12
  /// - "ilfilm14" : 14
  /// - "ilfilm16" : 16
  /// - "ilfilm18" : 18
  /// - "ilfilmUnrated"
  core.String? ilfilmRating;

  /// The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
  /// Argentina) rating.
  /// Possible string values are:
  /// - "incaaUnspecified"
  /// - "incaaAtp" : ATP (Apta para todo publico)
  /// - "incaaSam13" : 13 (Solo apta para mayores de 13 años)
  /// - "incaaSam16" : 16 (Solo apta para mayores de 16 años)
  /// - "incaaSam18" : 18 (Solo apta para mayores de 18 años)
  /// - "incaaC" : X (Solo apta para mayores de 18 años, de exhibición
  /// condicionada)
  /// - "incaaUnrated"
  core.String? incaaRating;

  /// The video's rating from the Kenya Film Classification Board.
  /// Possible string values are:
  /// - "kfcbUnspecified"
  /// - "kfcbG" : GE
  /// - "kfcbPg" : PG
  /// - "kfcb16plus" : 16
  /// - "kfcbR" : 18
  /// - "kfcbUnrated"
  core.String? kfcbRating;

  /// The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de
  /// Classificatie van Audiovisuele Media (Netherlands).
  /// Possible string values are:
  /// - "kijkwijzerUnspecified"
  /// - "kijkwijzerAl" : AL
  /// - "kijkwijzer6" : 6
  /// - "kijkwijzer9" : 9
  /// - "kijkwijzer12" : 12
  /// - "kijkwijzer16" : 16
  /// - "kijkwijzer18"
  /// - "kijkwijzerUnrated"
  core.String? kijkwijzerRating;

  /// The video's Korea Media Rating Board (영상물등급위원회) rating.
  ///
  /// The KMRB rates videos in South Korea.
  /// Possible string values are:
  /// - "kmrbUnspecified"
  /// - "kmrbAll" : 전체관람가
  /// - "kmrb12plus" : 12세 이상 관람가
  /// - "kmrb15plus" : 15세 이상 관람가
  /// - "kmrbTeenr"
  /// - "kmrbR" : 청소년 관람불가
  /// - "kmrbUnrated"
  core.String? kmrbRating;

  /// The video's rating from Indonesia's Lembaga Sensor Film.
  /// Possible string values are:
  /// - "lsfUnspecified"
  /// - "lsfSu" : SU
  /// - "lsfA" : A
  /// - "lsfBo" : BO
  /// - "lsf13" : 13
  /// - "lsfR" : R
  /// - "lsf17" : 17
  /// - "lsfD" : D
  /// - "lsf21" : 21
  /// - "lsfUnrated"
  core.String? lsfRating;

  /// The video's rating from Malta's Film Age-Classification Board.
  /// Possible string values are:
  /// - "mccaaUnspecified"
  /// - "mccaaU" : U
  /// - "mccaaPg" : PG
  /// - "mccaa12a" : 12A
  /// - "mccaa12" : 12
  /// - "mccaa14" : 14 - this rating was removed from the new classification
  /// structure introduced in 2013.
  /// - "mccaa15" : 15
  /// - "mccaa16" : 16 - this rating was removed from the new classification
  /// structure introduced in 2013.
  /// - "mccaa18" : 18
  /// - "mccaaUnrated"
  core.String? mccaaRating;

  /// The video's rating from the Danish Film Institute's (Det Danske
  /// Filminstitut) Media Council for Children and Young People.
  /// Possible string values are:
  /// - "mccypUnspecified"
  /// - "mccypA" : A
  /// - "mccyp7" : 7
  /// - "mccyp11" : 11
  /// - "mccyp15" : 15
  /// - "mccypUnrated"
  core.String? mccypRating;

  /// The video's rating system for Vietnam - MCST
  /// Possible string values are:
  /// - "mcstUnspecified"
  /// - "mcstP" : P
  /// - "mcst0" : 0
  /// - "mcstC13" : C13
  /// - "mcstC16" : C16
  /// - "mcst16plus" : 16+
  /// - "mcstC18" : C18
  /// - "mcstGPg" : MCST_G_PG
  /// - "mcstUnrated"
  core.String? mcstRating;

  /// The video's rating from Singapore's Media Development Authority (MDA) and,
  /// specifically, it's Board of Film Censors (BFC).
  /// Possible string values are:
  /// - "mdaUnspecified"
  /// - "mdaG" : G
  /// - "mdaPg" : PG
  /// - "mdaPg13" : PG13
  /// - "mdaNc16" : NC16
  /// - "mdaM18" : M18
  /// - "mdaR21" : R21
  /// - "mdaUnrated"
  core.String? mdaRating;

  /// The video's rating from Medietilsynet, the Norwegian Media Authority.
  /// Possible string values are:
  /// - "medietilsynetUnspecified"
  /// - "medietilsynetA" : A
  /// - "medietilsynet6" : 6
  /// - "medietilsynet7" : 7
  /// - "medietilsynet9" : 9
  /// - "medietilsynet11" : 11
  /// - "medietilsynet12" : 12
  /// - "medietilsynet15" : 15
  /// - "medietilsynet18" : 18
  /// - "medietilsynetUnrated"
  core.String? medietilsynetRating;

  /// The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti
  /// (National Audiovisual Institute).
  /// Possible string values are:
  /// - "mekuUnspecified"
  /// - "mekuS" : S
  /// - "meku7" : 7
  /// - "meku12" : 12
  /// - "meku16" : 16
  /// - "meku18" : 18
  /// - "mekuUnrated"
  core.String? mekuRating;

  /// The rating system for MENA countries, a clone of MPAA.
  ///
  /// It is needed to prevent titles go live w/o additional QC check, since some
  /// of them can be inappropriate for the countries at all. See b/33408548 for
  /// more details.
  /// Possible string values are:
  /// - "menaMpaaUnspecified"
  /// - "menaMpaaG" : G
  /// - "menaMpaaPg" : PG
  /// - "menaMpaaPg13" : PG-13
  /// - "menaMpaaR" : R
  /// - "menaMpaaUnrated" : To keep the same enum values as MPAA's items have,
  /// skip NC_17.
  core.String? menaMpaaRating;

  /// The video's rating from the Ministero dei Beni e delle Attività Culturali
  /// e del Turismo (Italy).
  /// Possible string values are:
  /// - "mibacUnspecified"
  /// - "mibacT"
  /// - "mibacVap"
  /// - "mibacVm12"
  /// - "mibacVm14"
  /// - "mibacVm18"
  /// - "mibacUnrated"
  core.String? mibacRating;

  /// The video's Ministerio de Cultura (Colombia) rating.
  /// Possible string values are:
  /// - "mocUnspecified"
  /// - "mocE" : E
  /// - "mocT" : T
  /// - "moc7" : 7
  /// - "moc12" : 12
  /// - "moc15" : 15
  /// - "moc18" : 18
  /// - "mocX" : X
  /// - "mocBanned" : Banned
  /// - "mocUnrated"
  core.String? mocRating;

  /// The video's rating from Taiwan's Ministry of Culture (文化部).
  /// Possible string values are:
  /// - "moctwUnspecified"
  /// - "moctwG" : G
  /// - "moctwP" : P
  /// - "moctwPg" : PG
  /// - "moctwR" : R
  /// - "moctwUnrated"
  /// - "moctwR12" : R-12
  /// - "moctwR15" : R-15
  core.String? moctwRating;

  /// The video's Motion Picture Association of America (MPAA) rating.
  /// Possible string values are:
  /// - "mpaaUnspecified"
  /// - "mpaaG" : G
  /// - "mpaaPg" : PG
  /// - "mpaaPg13" : PG-13
  /// - "mpaaR" : R
  /// - "mpaaNc17" : NC-17
  /// - "mpaaX" : ! X
  /// - "mpaaUnrated"
  core.String? mpaaRating;

  /// The rating system for trailer, DVD, and Ad in the US.
  ///
  /// See http://movielabs.com/md/ratings/v2.3/html/US_MPAAT_Ratings.html.
  /// Possible string values are:
  /// - "mpaatUnspecified"
  /// - "mpaatGb" : GB
  /// - "mpaatRb" : RB
  core.String? mpaatRating;

  /// The video's rating from the Movie and Television Review and Classification
  /// Board (Philippines).
  /// Possible string values are:
  /// - "mtrcbUnspecified"
  /// - "mtrcbG" : G
  /// - "mtrcbPg" : PG
  /// - "mtrcbR13" : R-13
  /// - "mtrcbR16" : R-16
  /// - "mtrcbR18" : R-18
  /// - "mtrcbX" : X
  /// - "mtrcbUnrated"
  core.String? mtrcbRating;

  /// The video's rating from the Maldives National Bureau of Classification.
  /// Possible string values are:
  /// - "nbcUnspecified"
  /// - "nbcG" : G
  /// - "nbcPg" : PG
  /// - "nbc12plus" : 12+
  /// - "nbc15plus" : 15+
  /// - "nbc18plus" : 18+
  /// - "nbc18plusr" : 18+R
  /// - "nbcPu" : PU
  /// - "nbcUnrated"
  core.String? nbcRating;

  /// The video's rating in Poland.
  /// Possible string values are:
  /// - "nbcplUnspecified"
  /// - "nbcplI"
  /// - "nbcplIi"
  /// - "nbcplIii"
  /// - "nbcplIv"
  /// - "nbcpl18plus"
  /// - "nbcplUnrated"
  core.String? nbcplRating;

  /// The video's rating from the Bulgarian National Film Center.
  /// Possible string values are:
  /// - "nfrcUnspecified"
  /// - "nfrcA" : A
  /// - "nfrcB" : B
  /// - "nfrcC" : C
  /// - "nfrcD" : D
  /// - "nfrcX" : X
  /// - "nfrcUnrated"
  core.String? nfrcRating;

  /// The video's rating from Nigeria's National Film and Video Censors Board.
  /// Possible string values are:
  /// - "nfvcbUnspecified"
  /// - "nfvcbG" : G
  /// - "nfvcbPg" : PG
  /// - "nfvcb12" : 12
  /// - "nfvcb12a" : 12A
  /// - "nfvcb15" : 15
  /// - "nfvcb18" : 18
  /// - "nfvcbRe" : RE
  /// - "nfvcbUnrated"
  core.String? nfvcbRating;

  /// The video's rating from the Nacionãlais Kino centrs (National Film Centre
  /// of Latvia).
  /// Possible string values are:
  /// - "nkclvUnspecified"
  /// - "nkclvU" : U
  /// - "nkclv7plus" : 7+
  /// - "nkclv12plus" : 12+
  /// - "nkclv16plus" : ! 16+
  /// - "nkclv18plus" : 18+
  /// - "nkclvUnrated"
  core.String? nkclvRating;

  /// The National Media Council ratings system for United Arab Emirates.
  /// Possible string values are:
  /// - "nmcUnspecified"
  /// - "nmcG" : G
  /// - "nmcPg" : PG
  /// - "nmcPg13" : PG-13
  /// - "nmcPg15" : PG-15
  /// - "nmc15plus" : 15+
  /// - "nmc18plus" : 18+
  /// - "nmc18tc" : 18TC
  /// - "nmcUnrated"
  core.String? nmcRating;

  /// The video's Office of Film and Literature Classification (OFLC - New
  /// Zealand) rating.
  /// Possible string values are:
  /// - "oflcUnspecified"
  /// - "oflcG" : G
  /// - "oflcPg" : PG
  /// - "oflcM" : M
  /// - "oflcR13" : R13
  /// - "oflcR15" : R15
  /// - "oflcR16" : R16
  /// - "oflcR18" : R18
  /// - "oflcUnrated"
  /// - "oflcRp13" : RP13
  /// - "oflcRp16" : RP16
  /// - "oflcRp18" : RP18
  core.String? oflcRating;

  /// The video's rating in Peru.
  /// Possible string values are:
  /// - "pefilmUnspecified"
  /// - "pefilmPt" : PT
  /// - "pefilmPg" : PG
  /// - "pefilm14" : 14
  /// - "pefilm18" : 18
  /// - "pefilmUnrated"
  core.String? pefilmRating;

  /// The video's rating from the Hungarian Nemzeti Filmiroda, the Rating
  /// Committee of the National Office of Film.
  /// Possible string values are:
  /// - "rcnofUnspecified"
  /// - "rcnofI"
  /// - "rcnofIi"
  /// - "rcnofIii"
  /// - "rcnofIv"
  /// - "rcnofV"
  /// - "rcnofVi"
  /// - "rcnofUnrated"
  core.String? rcnofRating;

  /// The video's rating in Venezuela.
  /// Possible string values are:
  /// - "resorteviolenciaUnspecified"
  /// - "resorteviolenciaA" : A
  /// - "resorteviolenciaB" : B
  /// - "resorteviolenciaC" : C
  /// - "resorteviolenciaD" : D
  /// - "resorteviolenciaE" : E
  /// - "resorteviolenciaUnrated"
  core.String? resorteviolenciaRating;

  /// The video's General Directorate of Radio, Television and Cinematography
  /// (Mexico) rating.
  /// Possible string values are:
  /// - "rtcUnspecified"
  /// - "rtcAa" : AA
  /// - "rtcA" : A
  /// - "rtcB" : B
  /// - "rtcB15" : B15
  /// - "rtcC" : C
  /// - "rtcD" : D
  /// - "rtcUnrated"
  core.String? rtcRating;

  /// The video's rating from Ireland's Raidió Teilifís Éireann.
  /// Possible string values are:
  /// - "rteUnspecified"
  /// - "rteGa" : GA
  /// - "rteCh" : CH
  /// - "rtePs" : PS
  /// - "rteMa" : MA
  /// - "rteUnrated"
  core.String? rteRating;

  /// The video's National Film Registry of the Russian Federation (MKRF -
  /// Russia) rating.
  /// Possible string values are:
  /// - "russiaUnspecified"
  /// - "russia0" : 0+
  /// - "russia6" : 6+
  /// - "russia12" : 12+
  /// - "russia16" : 16+
  /// - "russia18" : 18+
  /// - "russiaUnrated"
  core.String? russiaRating;

  /// The video's rating in Slovakia.
  /// Possible string values are:
  /// - "skfilmUnspecified"
  /// - "skfilmG" : G
  /// - "skfilmP2" : P2
  /// - "skfilmP5" : P5
  /// - "skfilmP8" : P8
  /// - "skfilmUnrated"
  core.String? skfilmRating;

  /// The video's rating in Iceland.
  /// Possible string values are:
  /// - "smaisUnspecified"
  /// - "smaisL" : L
  /// - "smais7" : 7
  /// - "smais12" : 12
  /// - "smais14" : 14
  /// - "smais16" : 16
  /// - "smais18" : 18
  /// - "smaisUnrated"
  core.String? smaisRating;

  /// The video's rating from Statens medieråd (Sweden's National Media
  /// Council).
  /// Possible string values are:
  /// - "smsaUnspecified"
  /// - "smsaA" : All ages
  /// - "smsa7" : 7
  /// - "smsa11" : 11
  /// - "smsa15" : 15
  /// - "smsaUnrated"
  core.String? smsaRating;

  /// The video's TV Parental Guidelines (TVPG) rating.
  /// Possible string values are:
  /// - "tvpgUnspecified"
  /// - "tvpgY" : TV-Y
  /// - "tvpgY7" : TV-Y7
  /// - "tvpgY7Fv" : TV-Y7-FV
  /// - "tvpgG" : TV-G
  /// - "tvpgPg" : TV-PG
  /// - "pg14" : TV-14
  /// - "tvpgMa" : TV-MA
  /// - "tvpgUnrated"
  core.String? tvpgRating;

  /// A rating that YouTube uses to identify age-restricted content.
  /// Possible string values are:
  /// - "ytUnspecified"
  /// - "ytAgeRestricted"
  core.String? ytRating;

  ContentRating({
    this.acbRating,
    this.agcomRating,
    this.anatelRating,
    this.bbfcRating,
    this.bfvcRating,
    this.bmukkRating,
    this.catvRating,
    this.catvfrRating,
    this.cbfcRating,
    this.cccRating,
    this.cceRating,
    this.chfilmRating,
    this.chvrsRating,
    this.cicfRating,
    this.cnaRating,
    this.cncRating,
    this.csaRating,
    this.cscfRating,
    this.czfilmRating,
    this.djctqRating,
    this.djctqRatingReasons,
    this.ecbmctRating,
    this.eefilmRating,
    this.egfilmRating,
    this.eirinRating,
    this.fcbmRating,
    this.fcoRating,
    this.fmocRating,
    this.fpbRating,
    this.fpbRatingReasons,
    this.fskRating,
    this.grfilmRating,
    this.icaaRating,
    this.ifcoRating,
    this.ilfilmRating,
    this.incaaRating,
    this.kfcbRating,
    this.kijkwijzerRating,
    this.kmrbRating,
    this.lsfRating,
    this.mccaaRating,
    this.mccypRating,
    this.mcstRating,
    this.mdaRating,
    this.medietilsynetRating,
    this.mekuRating,
    this.menaMpaaRating,
    this.mibacRating,
    this.mocRating,
    this.moctwRating,
    this.mpaaRating,
    this.mpaatRating,
    this.mtrcbRating,
    this.nbcRating,
    this.nbcplRating,
    this.nfrcRating,
    this.nfvcbRating,
    this.nkclvRating,
    this.nmcRating,
    this.oflcRating,
    this.pefilmRating,
    this.rcnofRating,
    this.resorteviolenciaRating,
    this.rtcRating,
    this.rteRating,
    this.russiaRating,
    this.skfilmRating,
    this.smaisRating,
    this.smsaRating,
    this.tvpgRating,
    this.ytRating,
  });

  ContentRating.fromJson(core.Map _json)
      : this(
          acbRating: _json.containsKey('acbRating')
              ? _json['acbRating'] as core.String
              : null,
          agcomRating: _json.containsKey('agcomRating')
              ? _json['agcomRating'] as core.String
              : null,
          anatelRating: _json.containsKey('anatelRating')
              ? _json['anatelRating'] as core.String
              : null,
          bbfcRating: _json.containsKey('bbfcRating')
              ? _json['bbfcRating'] as core.String
              : null,
          bfvcRating: _json.containsKey('bfvcRating')
              ? _json['bfvcRating'] as core.String
              : null,
          bmukkRating: _json.containsKey('bmukkRating')
              ? _json['bmukkRating'] as core.String
              : null,
          catvRating: _json.containsKey('catvRating')
              ? _json['catvRating'] as core.String
              : null,
          catvfrRating: _json.containsKey('catvfrRating')
              ? _json['catvfrRating'] as core.String
              : null,
          cbfcRating: _json.containsKey('cbfcRating')
              ? _json['cbfcRating'] as core.String
              : null,
          cccRating: _json.containsKey('cccRating')
              ? _json['cccRating'] as core.String
              : null,
          cceRating: _json.containsKey('cceRating')
              ? _json['cceRating'] as core.String
              : null,
          chfilmRating: _json.containsKey('chfilmRating')
              ? _json['chfilmRating'] as core.String
              : null,
          chvrsRating: _json.containsKey('chvrsRating')
              ? _json['chvrsRating'] as core.String
              : null,
          cicfRating: _json.containsKey('cicfRating')
              ? _json['cicfRating'] as core.String
              : null,
          cnaRating: _json.containsKey('cnaRating')
              ? _json['cnaRating'] as core.String
              : null,
          cncRating: _json.containsKey('cncRating')
              ? _json['cncRating'] as core.String
              : null,
          csaRating: _json.containsKey('csaRating')
              ? _json['csaRating'] as core.String
              : null,
          cscfRating: _json.containsKey('cscfRating')
              ? _json['cscfRating'] as core.String
              : null,
          czfilmRating: _json.containsKey('czfilmRating')
              ? _json['czfilmRating'] as core.String
              : null,
          djctqRating: _json.containsKey('djctqRating')
              ? _json['djctqRating'] as core.String
              : null,
          djctqRatingReasons: _json.containsKey('djctqRatingReasons')
              ? (_json['djctqRatingReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ecbmctRating: _json.containsKey('ecbmctRating')
              ? _json['ecbmctRating'] as core.String
              : null,
          eefilmRating: _json.containsKey('eefilmRating')
              ? _json['eefilmRating'] as core.String
              : null,
          egfilmRating: _json.containsKey('egfilmRating')
              ? _json['egfilmRating'] as core.String
              : null,
          eirinRating: _json.containsKey('eirinRating')
              ? _json['eirinRating'] as core.String
              : null,
          fcbmRating: _json.containsKey('fcbmRating')
              ? _json['fcbmRating'] as core.String
              : null,
          fcoRating: _json.containsKey('fcoRating')
              ? _json['fcoRating'] as core.String
              : null,
          fmocRating: _json.containsKey('fmocRating')
              ? _json['fmocRating'] as core.String
              : null,
          fpbRating: _json.containsKey('fpbRating')
              ? _json['fpbRating'] as core.String
              : null,
          fpbRatingReasons: _json.containsKey('fpbRatingReasons')
              ? (_json['fpbRatingReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fskRating: _json.containsKey('fskRating')
              ? _json['fskRating'] as core.String
              : null,
          grfilmRating: _json.containsKey('grfilmRating')
              ? _json['grfilmRating'] as core.String
              : null,
          icaaRating: _json.containsKey('icaaRating')
              ? _json['icaaRating'] as core.String
              : null,
          ifcoRating: _json.containsKey('ifcoRating')
              ? _json['ifcoRating'] as core.String
              : null,
          ilfilmRating: _json.containsKey('ilfilmRating')
              ? _json['ilfilmRating'] as core.String
              : null,
          incaaRating: _json.containsKey('incaaRating')
              ? _json['incaaRating'] as core.String
              : null,
          kfcbRating: _json.containsKey('kfcbRating')
              ? _json['kfcbRating'] as core.String
              : null,
          kijkwijzerRating: _json.containsKey('kijkwijzerRating')
              ? _json['kijkwijzerRating'] as core.String
              : null,
          kmrbRating: _json.containsKey('kmrbRating')
              ? _json['kmrbRating'] as core.String
              : null,
          lsfRating: _json.containsKey('lsfRating')
              ? _json['lsfRating'] as core.String
              : null,
          mccaaRating: _json.containsKey('mccaaRating')
              ? _json['mccaaRating'] as core.String
              : null,
          mccypRating: _json.containsKey('mccypRating')
              ? _json['mccypRating'] as core.String
              : null,
          mcstRating: _json.containsKey('mcstRating')
              ? _json['mcstRating'] as core.String
              : null,
          mdaRating: _json.containsKey('mdaRating')
              ? _json['mdaRating'] as core.String
              : null,
          medietilsynetRating: _json.containsKey('medietilsynetRating')
              ? _json['medietilsynetRating'] as core.String
              : null,
          mekuRating: _json.containsKey('mekuRating')
              ? _json['mekuRating'] as core.String
              : null,
          menaMpaaRating: _json.containsKey('menaMpaaRating')
              ? _json['menaMpaaRating'] as core.String
              : null,
          mibacRating: _json.containsKey('mibacRating')
              ? _json['mibacRating'] as core.String
              : null,
          mocRating: _json.containsKey('mocRating')
              ? _json['mocRating'] as core.String
              : null,
          moctwRating: _json.containsKey('moctwRating')
              ? _json['moctwRating'] as core.String
              : null,
          mpaaRating: _json.containsKey('mpaaRating')
              ? _json['mpaaRating'] as core.String
              : null,
          mpaatRating: _json.containsKey('mpaatRating')
              ? _json['mpaatRating'] as core.String
              : null,
          mtrcbRating: _json.containsKey('mtrcbRating')
              ? _json['mtrcbRating'] as core.String
              : null,
          nbcRating: _json.containsKey('nbcRating')
              ? _json['nbcRating'] as core.String
              : null,
          nbcplRating: _json.containsKey('nbcplRating')
              ? _json['nbcplRating'] as core.String
              : null,
          nfrcRating: _json.containsKey('nfrcRating')
              ? _json['nfrcRating'] as core.String
              : null,
          nfvcbRating: _json.containsKey('nfvcbRating')
              ? _json['nfvcbRating'] as core.String
              : null,
          nkclvRating: _json.containsKey('nkclvRating')
              ? _json['nkclvRating'] as core.String
              : null,
          nmcRating: _json.containsKey('nmcRating')
              ? _json['nmcRating'] as core.String
              : null,
          oflcRating: _json.containsKey('oflcRating')
              ? _json['oflcRating'] as core.String
              : null,
          pefilmRating: _json.containsKey('pefilmRating')
              ? _json['pefilmRating'] as core.String
              : null,
          rcnofRating: _json.containsKey('rcnofRating')
              ? _json['rcnofRating'] as core.String
              : null,
          resorteviolenciaRating: _json.containsKey('resorteviolenciaRating')
              ? _json['resorteviolenciaRating'] as core.String
              : null,
          rtcRating: _json.containsKey('rtcRating')
              ? _json['rtcRating'] as core.String
              : null,
          rteRating: _json.containsKey('rteRating')
              ? _json['rteRating'] as core.String
              : null,
          russiaRating: _json.containsKey('russiaRating')
              ? _json['russiaRating'] as core.String
              : null,
          skfilmRating: _json.containsKey('skfilmRating')
              ? _json['skfilmRating'] as core.String
              : null,
          smaisRating: _json.containsKey('smaisRating')
              ? _json['smaisRating'] as core.String
              : null,
          smsaRating: _json.containsKey('smsaRating')
              ? _json['smsaRating'] as core.String
              : null,
          tvpgRating: _json.containsKey('tvpgRating')
              ? _json['tvpgRating'] as core.String
              : null,
          ytRating: _json.containsKey('ytRating')
              ? _json['ytRating'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acbRating != null) 'acbRating': acbRating!,
        if (agcomRating != null) 'agcomRating': agcomRating!,
        if (anatelRating != null) 'anatelRating': anatelRating!,
        if (bbfcRating != null) 'bbfcRating': bbfcRating!,
        if (bfvcRating != null) 'bfvcRating': bfvcRating!,
        if (bmukkRating != null) 'bmukkRating': bmukkRating!,
        if (catvRating != null) 'catvRating': catvRating!,
        if (catvfrRating != null) 'catvfrRating': catvfrRating!,
        if (cbfcRating != null) 'cbfcRating': cbfcRating!,
        if (cccRating != null) 'cccRating': cccRating!,
        if (cceRating != null) 'cceRating': cceRating!,
        if (chfilmRating != null) 'chfilmRating': chfilmRating!,
        if (chvrsRating != null) 'chvrsRating': chvrsRating!,
        if (cicfRating != null) 'cicfRating': cicfRating!,
        if (cnaRating != null) 'cnaRating': cnaRating!,
        if (cncRating != null) 'cncRating': cncRating!,
        if (csaRating != null) 'csaRating': csaRating!,
        if (cscfRating != null) 'cscfRating': cscfRating!,
        if (czfilmRating != null) 'czfilmRating': czfilmRating!,
        if (djctqRating != null) 'djctqRating': djctqRating!,
        if (djctqRatingReasons != null)
          'djctqRatingReasons': djctqRatingReasons!,
        if (ecbmctRating != null) 'ecbmctRating': ecbmctRating!,
        if (eefilmRating != null) 'eefilmRating': eefilmRating!,
        if (egfilmRating != null) 'egfilmRating': egfilmRating!,
        if (eirinRating != null) 'eirinRating': eirinRating!,
        if (fcbmRating != null) 'fcbmRating': fcbmRating!,
        if (fcoRating != null) 'fcoRating': fcoRating!,
        if (fmocRating != null) 'fmocRating': fmocRating!,
        if (fpbRating != null) 'fpbRating': fpbRating!,
        if (fpbRatingReasons != null) 'fpbRatingReasons': fpbRatingReasons!,
        if (fskRating != null) 'fskRating': fskRating!,
        if (grfilmRating != null) 'grfilmRating': grfilmRating!,
        if (icaaRating != null) 'icaaRating': icaaRating!,
        if (ifcoRating != null) 'ifcoRating': ifcoRating!,
        if (ilfilmRating != null) 'ilfilmRating': ilfilmRating!,
        if (incaaRating != null) 'incaaRating': incaaRating!,
        if (kfcbRating != null) 'kfcbRating': kfcbRating!,
        if (kijkwijzerRating != null) 'kijkwijzerRating': kijkwijzerRating!,
        if (kmrbRating != null) 'kmrbRating': kmrbRating!,
        if (lsfRating != null) 'lsfRating': lsfRating!,
        if (mccaaRating != null) 'mccaaRating': mccaaRating!,
        if (mccypRating != null) 'mccypRating': mccypRating!,
        if (mcstRating != null) 'mcstRating': mcstRating!,
        if (mdaRating != null) 'mdaRating': mdaRating!,
        if (medietilsynetRating != null)
          'medietilsynetRating': medietilsynetRating!,
        if (mekuRating != null) 'mekuRating': mekuRating!,
        if (menaMpaaRating != null) 'menaMpaaRating': menaMpaaRating!,
        if (mibacRating != null) 'mibacRating': mibacRating!,
        if (mocRating != null) 'mocRating': mocRating!,
        if (moctwRating != null) 'moctwRating': moctwRating!,
        if (mpaaRating != null) 'mpaaRating': mpaaRating!,
        if (mpaatRating != null) 'mpaatRating': mpaatRating!,
        if (mtrcbRating != null) 'mtrcbRating': mtrcbRating!,
        if (nbcRating != null) 'nbcRating': nbcRating!,
        if (nbcplRating != null) 'nbcplRating': nbcplRating!,
        if (nfrcRating != null) 'nfrcRating': nfrcRating!,
        if (nfvcbRating != null) 'nfvcbRating': nfvcbRating!,
        if (nkclvRating != null) 'nkclvRating': nkclvRating!,
        if (nmcRating != null) 'nmcRating': nmcRating!,
        if (oflcRating != null) 'oflcRating': oflcRating!,
        if (pefilmRating != null) 'pefilmRating': pefilmRating!,
        if (rcnofRating != null) 'rcnofRating': rcnofRating!,
        if (resorteviolenciaRating != null)
          'resorteviolenciaRating': resorteviolenciaRating!,
        if (rtcRating != null) 'rtcRating': rtcRating!,
        if (rteRating != null) 'rteRating': rteRating!,
        if (russiaRating != null) 'russiaRating': russiaRating!,
        if (skfilmRating != null) 'skfilmRating': skfilmRating!,
        if (smaisRating != null) 'smaisRating': smaisRating!,
        if (smsaRating != null) 'smsaRating': smsaRating!,
        if (tvpgRating != null) 'tvpgRating': tvpgRating!,
        if (ytRating != null) 'ytRating': ytRating!,
      };
}

class Entity {
  core.String? id;
  core.String? typeId;
  core.String? url;

  Entity({
    this.id,
    this.typeId,
    this.url,
  });

  Entity.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          typeId: _json.containsKey('typeId')
              ? _json['typeId'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (typeId != null) 'typeId': typeId!,
        if (url != null) 'url': url!,
      };
}

/// Geographical coordinates of a point, in WGS84.
class GeoPoint {
  /// Altitude above the reference ellipsoid, in meters.
  core.double? altitude;

  /// Latitude in degrees.
  core.double? latitude;

  /// Longitude in degrees.
  core.double? longitude;

  GeoPoint({
    this.altitude,
    this.latitude,
    this.longitude,
  });

  GeoPoint.fromJson(core.Map _json)
      : this(
          altitude: _json.containsKey('altitude')
              ? (_json['altitude'] as core.num).toDouble()
              : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altitude != null) 'altitude': altitude!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// An *i18nLanguage* resource identifies a UI language currently supported by
/// YouTube.
class I18nLanguage {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the i18n language.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#i18nLanguage".
  core.String? kind;

  /// The snippet object contains basic details about the i18n language, such as
  /// language code and human-readable name.
  I18nLanguageSnippet? snippet;

  I18nLanguage({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  I18nLanguage.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? I18nLanguageSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class I18nLanguageListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of supported i18n languages.
  ///
  /// In this map, the i18n language ID is the map key, and its value is the
  /// corresponding i18nLanguage resource.
  core.List<I18nLanguage>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#i18nLanguageListResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  I18nLanguageListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  I18nLanguageListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => I18nLanguage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about an i18n language, such as language code and
/// human-readable name.
class I18nLanguageSnippet {
  /// A short BCP-47 code that uniquely identifies a language.
  core.String? hl;

  /// The human-readable name of the language in the language itself.
  core.String? name;

  I18nLanguageSnippet({
    this.hl,
    this.name,
  });

  I18nLanguageSnippet.fromJson(core.Map _json)
      : this(
          hl: _json.containsKey('hl') ? _json['hl'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hl != null) 'hl': hl!,
        if (name != null) 'name': name!,
      };
}

/// A *i18nRegion* resource identifies a region where YouTube is available.
class I18nRegion {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the i18n region.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#i18nRegion".
  core.String? kind;

  /// The snippet object contains basic details about the i18n region, such as
  /// region code and human-readable name.
  I18nRegionSnippet? snippet;

  I18nRegion({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  I18nRegion.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? I18nRegionSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class I18nRegionListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of regions where YouTube is available.
  ///
  /// In this map, the i18n region ID is the map key, and its value is the
  /// corresponding i18nRegion resource.
  core.List<I18nRegion>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#i18nRegionListResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  I18nRegionListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  I18nRegionListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => I18nRegion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about an i18n region, such as region code and human-readable
/// name.
class I18nRegionSnippet {
  /// The region code as a 2-letter ISO country code.
  core.String? gl;

  /// The human-readable name of the region.
  core.String? name;

  I18nRegionSnippet({
    this.gl,
    this.name,
  });

  I18nRegionSnippet.fromJson(core.Map _json)
      : this(
          gl: _json.containsKey('gl') ? _json['gl'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gl != null) 'gl': gl!,
        if (name != null) 'name': name!,
      };
}

/// Branding properties for images associated with the channel.
class ImageSettings {
  /// The URL for the background image shown on the video watch page.
  ///
  /// The image should be 1200px by 615px, with a maximum file size of 128k.
  LocalizedProperty? backgroundImageUrl;

  /// This is generated when a ChannelBanner.Insert request has succeeded for
  /// the given channel.
  core.String? bannerExternalUrl;

  /// Banner image.
  ///
  /// Desktop size (1060x175).
  core.String? bannerImageUrl;

  /// Banner image.
  ///
  /// Mobile size high resolution (1440x395).
  core.String? bannerMobileExtraHdImageUrl;

  /// Banner image.
  ///
  /// Mobile size high resolution (1280x360).
  core.String? bannerMobileHdImageUrl;

  /// Banner image.
  ///
  /// Mobile size (640x175).
  core.String? bannerMobileImageUrl;

  /// Banner image.
  ///
  /// Mobile size low resolution (320x88).
  core.String? bannerMobileLowImageUrl;

  /// Banner image.
  ///
  /// Mobile size medium/high resolution (960x263).
  core.String? bannerMobileMediumHdImageUrl;

  /// Banner image.
  ///
  /// Tablet size extra high resolution (2560x424).
  core.String? bannerTabletExtraHdImageUrl;

  /// Banner image.
  ///
  /// Tablet size high resolution (2276x377).
  core.String? bannerTabletHdImageUrl;

  /// Banner image.
  ///
  /// Tablet size (1707x283).
  core.String? bannerTabletImageUrl;

  /// Banner image.
  ///
  /// Tablet size low resolution (1138x188).
  core.String? bannerTabletLowImageUrl;

  /// Banner image.
  ///
  /// TV size high resolution (1920x1080).
  core.String? bannerTvHighImageUrl;

  /// Banner image.
  ///
  /// TV size extra high resolution (2120x1192).
  core.String? bannerTvImageUrl;

  /// Banner image.
  ///
  /// TV size low resolution (854x480).
  core.String? bannerTvLowImageUrl;

  /// Banner image.
  ///
  /// TV size medium resolution (1280x720).
  core.String? bannerTvMediumImageUrl;

  /// The image map script for the large banner image.
  LocalizedProperty? largeBrandedBannerImageImapScript;

  /// The URL for the 854px by 70px image that appears below the video player in
  /// the expanded video view of the video watch page.
  LocalizedProperty? largeBrandedBannerImageUrl;

  /// The image map script for the small banner image.
  LocalizedProperty? smallBrandedBannerImageImapScript;

  /// The URL for the 640px by 70px banner image that appears below the video
  /// player in the default view of the video watch page.
  ///
  /// The URL for the image that appears above the top-left corner of the video
  /// player. This is a 25-pixel-high image with a flexible width that cannot
  /// exceed 170 pixels.
  LocalizedProperty? smallBrandedBannerImageUrl;

  /// The URL for a 1px by 1px tracking pixel that can be used to collect
  /// statistics for views of the channel or video pages.
  core.String? trackingImageUrl;
  core.String? watchIconImageUrl;

  ImageSettings({
    this.backgroundImageUrl,
    this.bannerExternalUrl,
    this.bannerImageUrl,
    this.bannerMobileExtraHdImageUrl,
    this.bannerMobileHdImageUrl,
    this.bannerMobileImageUrl,
    this.bannerMobileLowImageUrl,
    this.bannerMobileMediumHdImageUrl,
    this.bannerTabletExtraHdImageUrl,
    this.bannerTabletHdImageUrl,
    this.bannerTabletImageUrl,
    this.bannerTabletLowImageUrl,
    this.bannerTvHighImageUrl,
    this.bannerTvImageUrl,
    this.bannerTvLowImageUrl,
    this.bannerTvMediumImageUrl,
    this.largeBrandedBannerImageImapScript,
    this.largeBrandedBannerImageUrl,
    this.smallBrandedBannerImageImapScript,
    this.smallBrandedBannerImageUrl,
    this.trackingImageUrl,
    this.watchIconImageUrl,
  });

  ImageSettings.fromJson(core.Map _json)
      : this(
          backgroundImageUrl: _json.containsKey('backgroundImageUrl')
              ? LocalizedProperty.fromJson(_json['backgroundImageUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bannerExternalUrl: _json.containsKey('bannerExternalUrl')
              ? _json['bannerExternalUrl'] as core.String
              : null,
          bannerImageUrl: _json.containsKey('bannerImageUrl')
              ? _json['bannerImageUrl'] as core.String
              : null,
          bannerMobileExtraHdImageUrl:
              _json.containsKey('bannerMobileExtraHdImageUrl')
                  ? _json['bannerMobileExtraHdImageUrl'] as core.String
                  : null,
          bannerMobileHdImageUrl: _json.containsKey('bannerMobileHdImageUrl')
              ? _json['bannerMobileHdImageUrl'] as core.String
              : null,
          bannerMobileImageUrl: _json.containsKey('bannerMobileImageUrl')
              ? _json['bannerMobileImageUrl'] as core.String
              : null,
          bannerMobileLowImageUrl: _json.containsKey('bannerMobileLowImageUrl')
              ? _json['bannerMobileLowImageUrl'] as core.String
              : null,
          bannerMobileMediumHdImageUrl:
              _json.containsKey('bannerMobileMediumHdImageUrl')
                  ? _json['bannerMobileMediumHdImageUrl'] as core.String
                  : null,
          bannerTabletExtraHdImageUrl:
              _json.containsKey('bannerTabletExtraHdImageUrl')
                  ? _json['bannerTabletExtraHdImageUrl'] as core.String
                  : null,
          bannerTabletHdImageUrl: _json.containsKey('bannerTabletHdImageUrl')
              ? _json['bannerTabletHdImageUrl'] as core.String
              : null,
          bannerTabletImageUrl: _json.containsKey('bannerTabletImageUrl')
              ? _json['bannerTabletImageUrl'] as core.String
              : null,
          bannerTabletLowImageUrl: _json.containsKey('bannerTabletLowImageUrl')
              ? _json['bannerTabletLowImageUrl'] as core.String
              : null,
          bannerTvHighImageUrl: _json.containsKey('bannerTvHighImageUrl')
              ? _json['bannerTvHighImageUrl'] as core.String
              : null,
          bannerTvImageUrl: _json.containsKey('bannerTvImageUrl')
              ? _json['bannerTvImageUrl'] as core.String
              : null,
          bannerTvLowImageUrl: _json.containsKey('bannerTvLowImageUrl')
              ? _json['bannerTvLowImageUrl'] as core.String
              : null,
          bannerTvMediumImageUrl: _json.containsKey('bannerTvMediumImageUrl')
              ? _json['bannerTvMediumImageUrl'] as core.String
              : null,
          largeBrandedBannerImageImapScript:
              _json.containsKey('largeBrandedBannerImageImapScript')
                  ? LocalizedProperty.fromJson(
                      _json['largeBrandedBannerImageImapScript']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          largeBrandedBannerImageUrl: _json
                  .containsKey('largeBrandedBannerImageUrl')
              ? LocalizedProperty.fromJson(_json['largeBrandedBannerImageUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smallBrandedBannerImageImapScript:
              _json.containsKey('smallBrandedBannerImageImapScript')
                  ? LocalizedProperty.fromJson(
                      _json['smallBrandedBannerImageImapScript']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          smallBrandedBannerImageUrl: _json
                  .containsKey('smallBrandedBannerImageUrl')
              ? LocalizedProperty.fromJson(_json['smallBrandedBannerImageUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          trackingImageUrl: _json.containsKey('trackingImageUrl')
              ? _json['trackingImageUrl'] as core.String
              : null,
          watchIconImageUrl: _json.containsKey('watchIconImageUrl')
              ? _json['watchIconImageUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundImageUrl != null)
          'backgroundImageUrl': backgroundImageUrl!,
        if (bannerExternalUrl != null) 'bannerExternalUrl': bannerExternalUrl!,
        if (bannerImageUrl != null) 'bannerImageUrl': bannerImageUrl!,
        if (bannerMobileExtraHdImageUrl != null)
          'bannerMobileExtraHdImageUrl': bannerMobileExtraHdImageUrl!,
        if (bannerMobileHdImageUrl != null)
          'bannerMobileHdImageUrl': bannerMobileHdImageUrl!,
        if (bannerMobileImageUrl != null)
          'bannerMobileImageUrl': bannerMobileImageUrl!,
        if (bannerMobileLowImageUrl != null)
          'bannerMobileLowImageUrl': bannerMobileLowImageUrl!,
        if (bannerMobileMediumHdImageUrl != null)
          'bannerMobileMediumHdImageUrl': bannerMobileMediumHdImageUrl!,
        if (bannerTabletExtraHdImageUrl != null)
          'bannerTabletExtraHdImageUrl': bannerTabletExtraHdImageUrl!,
        if (bannerTabletHdImageUrl != null)
          'bannerTabletHdImageUrl': bannerTabletHdImageUrl!,
        if (bannerTabletImageUrl != null)
          'bannerTabletImageUrl': bannerTabletImageUrl!,
        if (bannerTabletLowImageUrl != null)
          'bannerTabletLowImageUrl': bannerTabletLowImageUrl!,
        if (bannerTvHighImageUrl != null)
          'bannerTvHighImageUrl': bannerTvHighImageUrl!,
        if (bannerTvImageUrl != null) 'bannerTvImageUrl': bannerTvImageUrl!,
        if (bannerTvLowImageUrl != null)
          'bannerTvLowImageUrl': bannerTvLowImageUrl!,
        if (bannerTvMediumImageUrl != null)
          'bannerTvMediumImageUrl': bannerTvMediumImageUrl!,
        if (largeBrandedBannerImageImapScript != null)
          'largeBrandedBannerImageImapScript':
              largeBrandedBannerImageImapScript!,
        if (largeBrandedBannerImageUrl != null)
          'largeBrandedBannerImageUrl': largeBrandedBannerImageUrl!,
        if (smallBrandedBannerImageImapScript != null)
          'smallBrandedBannerImageImapScript':
              smallBrandedBannerImageImapScript!,
        if (smallBrandedBannerImageUrl != null)
          'smallBrandedBannerImageUrl': smallBrandedBannerImageUrl!,
        if (trackingImageUrl != null) 'trackingImageUrl': trackingImageUrl!,
        if (watchIconImageUrl != null) 'watchIconImageUrl': watchIconImageUrl!,
      };
}

/// Describes information necessary for ingesting an RTMP or an HTTP stream.
class IngestionInfo {
  /// The backup ingestion URL that you should use to stream video to YouTube.
  ///
  /// You have the option of simultaneously streaming the content that you are
  /// sending to the ingestionAddress to this URL.
  core.String? backupIngestionAddress;

  /// The primary ingestion URL that you should use to stream video to YouTube.
  ///
  /// You must stream video to this URL. Depending on which application or tool
  /// you use to encode your video stream, you may need to enter the stream URL
  /// and stream name separately or you may need to concatenate them in the
  /// following format: *STREAM_URL/STREAM_NAME*
  core.String? ingestionAddress;

  /// This ingestion url may be used instead of backupIngestionAddress in order
  /// to stream via RTMPS.
  ///
  /// Not applicable to non-RTMP streams.
  core.String? rtmpsBackupIngestionAddress;

  /// This ingestion url may be used instead of ingestionAddress in order to
  /// stream via RTMPS.
  ///
  /// Not applicable to non-RTMP streams.
  core.String? rtmpsIngestionAddress;

  /// The HTTP or RTMP stream name that YouTube assigns to the video stream.
  core.String? streamName;

  IngestionInfo({
    this.backupIngestionAddress,
    this.ingestionAddress,
    this.rtmpsBackupIngestionAddress,
    this.rtmpsIngestionAddress,
    this.streamName,
  });

  IngestionInfo.fromJson(core.Map _json)
      : this(
          backupIngestionAddress: _json.containsKey('backupIngestionAddress')
              ? _json['backupIngestionAddress'] as core.String
              : null,
          ingestionAddress: _json.containsKey('ingestionAddress')
              ? _json['ingestionAddress'] as core.String
              : null,
          rtmpsBackupIngestionAddress:
              _json.containsKey('rtmpsBackupIngestionAddress')
                  ? _json['rtmpsBackupIngestionAddress'] as core.String
                  : null,
          rtmpsIngestionAddress: _json.containsKey('rtmpsIngestionAddress')
              ? _json['rtmpsIngestionAddress'] as core.String
              : null,
          streamName: _json.containsKey('streamName')
              ? _json['streamName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupIngestionAddress != null)
          'backupIngestionAddress': backupIngestionAddress!,
        if (ingestionAddress != null) 'ingestionAddress': ingestionAddress!,
        if (rtmpsBackupIngestionAddress != null)
          'rtmpsBackupIngestionAddress': rtmpsBackupIngestionAddress!,
        if (rtmpsIngestionAddress != null)
          'rtmpsIngestionAddress': rtmpsIngestionAddress!,
        if (streamName != null) 'streamName': streamName!,
      };
}

/// LINT.IfChange Describes an invideo branding.
class InvideoBranding {
  /// The bytes the uploaded image.
  ///
  /// Only used in api to youtube communication.
  core.String? imageBytes;
  core.List<core.int> get imageBytesAsBytes =>
      convert.base64.decode(imageBytes!);

  set imageBytesAsBytes(core.List<core.int> _bytes) {
    imageBytes =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The url of the uploaded image.
  ///
  /// Only used in apiary to api communication.
  core.String? imageUrl;

  /// The spatial position within the video where the branding watermark will be
  /// displayed.
  InvideoPosition? position;

  /// The channel to which this branding links.
  ///
  /// If not present it defaults to the current channel.
  core.String? targetChannelId;

  /// The temporal position within the video where watermark will be displayed.
  InvideoTiming? timing;

  InvideoBranding({
    this.imageBytes,
    this.imageUrl,
    this.position,
    this.targetChannelId,
    this.timing,
  });

  InvideoBranding.fromJson(core.Map _json)
      : this(
          imageBytes: _json.containsKey('imageBytes')
              ? _json['imageBytes'] as core.String
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          position: _json.containsKey('position')
              ? InvideoPosition.fromJson(
                  _json['position'] as core.Map<core.String, core.dynamic>)
              : null,
          targetChannelId: _json.containsKey('targetChannelId')
              ? _json['targetChannelId'] as core.String
              : null,
          timing: _json.containsKey('timing')
              ? InvideoTiming.fromJson(
                  _json['timing'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageBytes != null) 'imageBytes': imageBytes!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (position != null) 'position': position!,
        if (targetChannelId != null) 'targetChannelId': targetChannelId!,
        if (timing != null) 'timing': timing!,
      };
}

/// Describes the spatial position of a visual widget inside a video.
///
/// It is a union of various position types, out of which only will be set one.
class InvideoPosition {
  /// Describes in which corner of the video the visual widget will appear.
  /// Possible string values are:
  /// - "topLeft"
  /// - "topRight"
  /// - "bottomLeft"
  /// - "bottomRight"
  core.String? cornerPosition;

  /// Defines the position type.
  /// Possible string values are:
  /// - "corner"
  core.String? type;

  InvideoPosition({
    this.cornerPosition,
    this.type,
  });

  InvideoPosition.fromJson(core.Map _json)
      : this(
          cornerPosition: _json.containsKey('cornerPosition')
              ? _json['cornerPosition'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cornerPosition != null) 'cornerPosition': cornerPosition!,
        if (type != null) 'type': type!,
      };
}

/// Describes a temporal position of a visual widget inside a video.
class InvideoTiming {
  /// Defines the duration in milliseconds for which the promotion should be
  /// displayed.
  ///
  /// If missing, the client should use the default.
  core.String? durationMs;

  /// Defines the time at which the promotion will appear.
  ///
  /// Depending on the value of type the value of the offsetMs field will
  /// represent a time offset from the start or from the end of the video,
  /// expressed in milliseconds.
  core.String? offsetMs;

  /// Describes a timing type.
  ///
  /// If the value is offsetFromStart, then the offsetMs field represents an
  /// offset from the start of the video. If the value is offsetFromEnd, then
  /// the offsetMs field represents an offset from the end of the video.
  /// Possible string values are:
  /// - "offsetFromStart"
  /// - "offsetFromEnd"
  core.String? type;

  InvideoTiming({
    this.durationMs,
    this.offsetMs,
    this.type,
  });

  InvideoTiming.fromJson(core.Map _json)
      : this(
          durationMs: _json.containsKey('durationMs')
              ? _json['durationMs'] as core.String
              : null,
          offsetMs: _json.containsKey('offsetMs')
              ? _json['offsetMs'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (durationMs != null) 'durationMs': durationMs!,
        if (offsetMs != null) 'offsetMs': offsetMs!,
        if (type != null) 'type': type!,
      };
}

typedef LanguageTag = $Shared11;

class LevelDetails {
  /// The name that should be used when referring to this level.
  core.String? displayName;

  LevelDetails({
    this.displayName,
  });

  LevelDetails.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// A *liveBroadcast* resource represents an event that will be streamed, via
/// live video, on YouTube.
class LiveBroadcast {
  /// The contentDetails object contains information about the event's video
  /// content, such as whether the content can be shown in an embedded video
  /// player or if it will be archived and therefore available for viewing after
  /// the event has concluded.
  LiveBroadcastContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the broadcast.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveBroadcast".
  core.String? kind;

  /// The snippet object contains basic details about the event, including its
  /// title, description, start time, and end time.
  LiveBroadcastSnippet? snippet;

  /// The statistics object contains info about the event's current stats.
  ///
  /// These include concurrent viewers and total chat count. Statistics can
  /// change (in either direction) during the lifetime of an event. Statistics
  /// are only returned while the event is live.
  LiveBroadcastStatistics? statistics;

  /// The status object contains information about the event's status.
  LiveBroadcastStatus? status;

  LiveBroadcast({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
    this.statistics,
    this.status,
  });

  LiveBroadcast.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? LiveBroadcastContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? LiveBroadcastSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          statistics: _json.containsKey('statistics')
              ? LiveBroadcastStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? LiveBroadcastStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
      };
}

/// Detailed settings of a broadcast.
class LiveBroadcastContentDetails {
  /// This value uniquely identifies the live stream bound to the broadcast.
  core.String? boundStreamId;

  /// The date and time that the live stream referenced by boundStreamId was
  /// last updated.
  core.DateTime? boundStreamLastUpdateTimeMs;

  ///
  /// Possible string values are:
  /// - "closedCaptionsTypeUnspecified"
  /// - "closedCaptionsDisabled"
  /// - "closedCaptionsHttpPost"
  /// - "closedCaptionsEmbedded"
  core.String? closedCaptionsType;

  /// This setting indicates whether auto start is enabled for this broadcast.
  ///
  /// The default value for this property is false. This setting can only be
  /// used by Events.
  core.bool? enableAutoStart;

  /// This setting indicates whether auto stop is enabled for this broadcast.
  ///
  /// The default value for this property is false. This setting can only be
  /// used by Events.
  core.bool? enableAutoStop;

  /// This setting indicates whether HTTP POST closed captioning is enabled for
  /// this broadcast.
  ///
  /// The ingestion URL of the closed captions is returned through the
  /// liveStreams API. This is mutually exclusive with using the
  /// closed_captions_type property, and is equivalent to setting
  /// closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.
  core.bool? enableClosedCaptions;

  /// This setting indicates whether YouTube should enable content encryption
  /// for the broadcast.
  core.bool? enableContentEncryption;

  /// This setting determines whether viewers can access DVR controls while
  /// watching the video.
  ///
  /// DVR controls enable the viewer to control the video playback experience by
  /// pausing, rewinding, or fast forwarding content. The default value for this
  /// property is true. *Important:* You must set the value to true and also set
  /// the enableArchive property's value to true if you want to make playback
  /// available immediately after the broadcast ends.
  core.bool? enableDvr;

  /// This setting indicates whether the broadcast video can be played in an
  /// embedded player.
  ///
  /// If you choose to archive the video (using the enableArchive property),
  /// this setting will also apply to the archived video.
  core.bool? enableEmbed;

  /// Indicates whether this broadcast has low latency enabled.
  core.bool? enableLowLatency;

  /// If both this and enable_low_latency are set, they must match.
  ///
  /// LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should
  /// match enable_low_latency=true LATENCY_ULTRA_LOW should have
  /// enable_low_latency omitted.
  /// Possible string values are:
  /// - "latencyPreferenceUnspecified"
  /// - "normal" : Best for: highest quality viewer playbacks and higher
  /// resolutions.
  /// - "low" : Best for: near real-time interaction, with minimal playback
  /// buffering.
  /// - "ultraLow" : Best for: real-time interaction Does not support: Closed
  /// captions, 1440p, and 4k resolutions
  core.String? latencyPreference;

  /// The mesh for projecting the video if projection is mesh.
  ///
  /// The mesh value must be a UTF-8 string containing the base-64 encoding of
  /// 3D mesh data that follows the Spherical Video V2 RFC specification for an
  /// mshp box, excluding the box size and type but including the following four
  /// reserved zero bytes for the version and flags.
  core.String? mesh;
  core.List<core.int> get meshAsBytes => convert.base64.decode(mesh!);

  set meshAsBytes(core.List<core.int> _bytes) {
    mesh =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The monitorStream object contains information about the monitor stream,
  /// which the broadcaster can use to review the event content before the
  /// broadcast stream is shown publicly.
  MonitorStreamInfo? monitorStream;

  /// The projection format of this broadcast.
  ///
  /// This defaults to rectangular.
  /// Possible string values are:
  /// - "projectionUnspecified"
  /// - "rectangular"
  /// - "360"
  /// - "mesh"
  core.String? projection;

  /// Automatically start recording after the event goes live.
  ///
  /// The default value for this property is true. *Important:* You must also
  /// set the enableDvr property's value to true if you want the playback to be
  /// available immediately after the broadcast ends. If you set this property's
  /// value to true but do not also set the enableDvr property to true, there
  /// may be a delay of around one day before the archived video will be
  /// available for playback.
  core.bool? recordFromStart;

  /// This setting indicates whether the broadcast should automatically begin
  /// with an in-stream slate when you update the broadcast's status to live.
  ///
  /// After updating the status, you then need to send a liveCuepoints.insert
  /// request that sets the cuepoint's eventState to end to remove the in-stream
  /// slate and make your broadcast stream visible to viewers.
  core.bool? startWithSlate;

  /// The 3D stereo layout of this broadcast.
  ///
  /// This defaults to mono.
  /// Possible string values are:
  /// - "stereoLayoutUnspecified"
  /// - "mono"
  /// - "leftRight"
  /// - "topBottom"
  core.String? stereoLayout;

  LiveBroadcastContentDetails({
    this.boundStreamId,
    this.boundStreamLastUpdateTimeMs,
    this.closedCaptionsType,
    this.enableAutoStart,
    this.enableAutoStop,
    this.enableClosedCaptions,
    this.enableContentEncryption,
    this.enableDvr,
    this.enableEmbed,
    this.enableLowLatency,
    this.latencyPreference,
    this.mesh,
    this.monitorStream,
    this.projection,
    this.recordFromStart,
    this.startWithSlate,
    this.stereoLayout,
  });

  LiveBroadcastContentDetails.fromJson(core.Map _json)
      : this(
          boundStreamId: _json.containsKey('boundStreamId')
              ? _json['boundStreamId'] as core.String
              : null,
          boundStreamLastUpdateTimeMs:
              _json.containsKey('boundStreamLastUpdateTimeMs')
                  ? core.DateTime.parse(
                      _json['boundStreamLastUpdateTimeMs'] as core.String)
                  : null,
          closedCaptionsType: _json.containsKey('closedCaptionsType')
              ? _json['closedCaptionsType'] as core.String
              : null,
          enableAutoStart: _json.containsKey('enableAutoStart')
              ? _json['enableAutoStart'] as core.bool
              : null,
          enableAutoStop: _json.containsKey('enableAutoStop')
              ? _json['enableAutoStop'] as core.bool
              : null,
          enableClosedCaptions: _json.containsKey('enableClosedCaptions')
              ? _json['enableClosedCaptions'] as core.bool
              : null,
          enableContentEncryption: _json.containsKey('enableContentEncryption')
              ? _json['enableContentEncryption'] as core.bool
              : null,
          enableDvr: _json.containsKey('enableDvr')
              ? _json['enableDvr'] as core.bool
              : null,
          enableEmbed: _json.containsKey('enableEmbed')
              ? _json['enableEmbed'] as core.bool
              : null,
          enableLowLatency: _json.containsKey('enableLowLatency')
              ? _json['enableLowLatency'] as core.bool
              : null,
          latencyPreference: _json.containsKey('latencyPreference')
              ? _json['latencyPreference'] as core.String
              : null,
          mesh: _json.containsKey('mesh') ? _json['mesh'] as core.String : null,
          monitorStream: _json.containsKey('monitorStream')
              ? MonitorStreamInfo.fromJson(
                  _json['monitorStream'] as core.Map<core.String, core.dynamic>)
              : null,
          projection: _json.containsKey('projection')
              ? _json['projection'] as core.String
              : null,
          recordFromStart: _json.containsKey('recordFromStart')
              ? _json['recordFromStart'] as core.bool
              : null,
          startWithSlate: _json.containsKey('startWithSlate')
              ? _json['startWithSlate'] as core.bool
              : null,
          stereoLayout: _json.containsKey('stereoLayout')
              ? _json['stereoLayout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundStreamId != null) 'boundStreamId': boundStreamId!,
        if (boundStreamLastUpdateTimeMs != null)
          'boundStreamLastUpdateTimeMs':
              boundStreamLastUpdateTimeMs!.toIso8601String(),
        if (closedCaptionsType != null)
          'closedCaptionsType': closedCaptionsType!,
        if (enableAutoStart != null) 'enableAutoStart': enableAutoStart!,
        if (enableAutoStop != null) 'enableAutoStop': enableAutoStop!,
        if (enableClosedCaptions != null)
          'enableClosedCaptions': enableClosedCaptions!,
        if (enableContentEncryption != null)
          'enableContentEncryption': enableContentEncryption!,
        if (enableDvr != null) 'enableDvr': enableDvr!,
        if (enableEmbed != null) 'enableEmbed': enableEmbed!,
        if (enableLowLatency != null) 'enableLowLatency': enableLowLatency!,
        if (latencyPreference != null) 'latencyPreference': latencyPreference!,
        if (mesh != null) 'mesh': mesh!,
        if (monitorStream != null) 'monitorStream': monitorStream!,
        if (projection != null) 'projection': projection!,
        if (recordFromStart != null) 'recordFromStart': recordFromStart!,
        if (startWithSlate != null) 'startWithSlate': startWithSlate!,
        if (stereoLayout != null) 'stereoLayout': stereoLayout!,
      };
}

class LiveBroadcastListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of broadcasts that match the request criteria.
  core.List<LiveBroadcast>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveBroadcastListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  LiveBroadcastListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  LiveBroadcastListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => LiveBroadcast.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic broadcast information.
class LiveBroadcastSnippet {
  /// The date and time that the broadcast actually ended.
  ///
  /// This information is only available once the broadcast's state is complete.
  core.DateTime? actualEndTime;

  /// The date and time that the broadcast actually started.
  ///
  /// This information is only available once the broadcast's state is live.
  core.DateTime? actualStartTime;

  /// The ID that YouTube uses to uniquely identify the channel that is
  /// publishing the broadcast.
  core.String? channelId;

  /// The broadcast's description.
  ///
  /// As with the title, you can set this field by modifying the broadcast
  /// resource or by setting the description field of the corresponding video
  /// resource.
  core.String? description;

  /// Indicates whether this broadcast is the default broadcast.
  ///
  /// Internal only.
  core.bool? isDefaultBroadcast;

  /// The id of the live chat for this broadcast.
  core.String? liveChatId;

  /// The date and time that the broadcast was added to YouTube's live broadcast
  /// schedule.
  core.DateTime? publishedAt;

  /// The date and time that the broadcast is scheduled to end.
  core.DateTime? scheduledEndTime;

  /// The date and time that the broadcast is scheduled to start.
  core.DateTime? scheduledStartTime;

  /// A map of thumbnail images associated with the broadcast.
  ///
  /// For each nested object in this object, the key is the name of the
  /// thumbnail image, and the value is an object that contains other
  /// information about the thumbnail.
  ThumbnailDetails? thumbnails;

  /// The broadcast's title.
  ///
  /// Note that the broadcast represents exactly one YouTube video. You can set
  /// this field by modifying the broadcast resource or by setting the title
  /// field of the corresponding video resource.
  core.String? title;

  LiveBroadcastSnippet({
    this.actualEndTime,
    this.actualStartTime,
    this.channelId,
    this.description,
    this.isDefaultBroadcast,
    this.liveChatId,
    this.publishedAt,
    this.scheduledEndTime,
    this.scheduledStartTime,
    this.thumbnails,
    this.title,
  });

  LiveBroadcastSnippet.fromJson(core.Map _json)
      : this(
          actualEndTime: _json.containsKey('actualEndTime')
              ? core.DateTime.parse(_json['actualEndTime'] as core.String)
              : null,
          actualStartTime: _json.containsKey('actualStartTime')
              ? core.DateTime.parse(_json['actualStartTime'] as core.String)
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          isDefaultBroadcast: _json.containsKey('isDefaultBroadcast')
              ? _json['isDefaultBroadcast'] as core.bool
              : null,
          liveChatId: _json.containsKey('liveChatId')
              ? _json['liveChatId'] as core.String
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          scheduledEndTime: _json.containsKey('scheduledEndTime')
              ? core.DateTime.parse(_json['scheduledEndTime'] as core.String)
              : null,
          scheduledStartTime: _json.containsKey('scheduledStartTime')
              ? core.DateTime.parse(_json['scheduledStartTime'] as core.String)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actualEndTime != null)
          'actualEndTime': actualEndTime!.toIso8601String(),
        if (actualStartTime != null)
          'actualStartTime': actualStartTime!.toIso8601String(),
        if (channelId != null) 'channelId': channelId!,
        if (description != null) 'description': description!,
        if (isDefaultBroadcast != null)
          'isDefaultBroadcast': isDefaultBroadcast!,
        if (liveChatId != null) 'liveChatId': liveChatId!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (scheduledEndTime != null)
          'scheduledEndTime': scheduledEndTime!.toIso8601String(),
        if (scheduledStartTime != null)
          'scheduledStartTime': scheduledStartTime!.toIso8601String(),
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// Statistics about the live broadcast.
///
/// These represent a snapshot of the values at the time of the request.
/// Statistics are only returned for live broadcasts.
class LiveBroadcastStatistics {
  /// The total number of live chat messages currently on the broadcast.
  ///
  /// The property and its value will be present if the broadcast is public, has
  /// the live chat feature enabled, and has at least one message. Note that
  /// this field will not be filled after the broadcast ends. So this property
  /// would not identify the number of chat messages for an archived video of a
  /// completed live broadcast.
  core.String? totalChatCount;

  LiveBroadcastStatistics({
    this.totalChatCount,
  });

  LiveBroadcastStatistics.fromJson(core.Map _json)
      : this(
          totalChatCount: _json.containsKey('totalChatCount')
              ? _json['totalChatCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalChatCount != null) 'totalChatCount': totalChatCount!,
      };
}

/// Live broadcast state.
class LiveBroadcastStatus {
  /// The broadcast's status.
  ///
  /// The status can be updated using the API's liveBroadcasts.transition
  /// method.
  /// Possible string values are:
  /// - "lifeCycleStatusUnspecified" : No value or the value is unknown.
  /// - "created" : Incomplete settings, but otherwise valid
  /// - "ready" : Complete settings
  /// - "testing" : Visible only to partner, may need special UI treatment
  /// - "live" : Viper is recording; this means the "clock" is running
  /// - "complete" : The broadcast is finished.
  /// - "revoked" : This broadcast was removed by admin action
  /// - "testStarting" : Transition into TESTING has been requested
  /// - "liveStarting" : Transition into LIVE has been requested
  core.String? lifeCycleStatus;

  /// Priority of the live broadcast event (internal state).
  /// Possible string values are:
  /// - "liveBroadcastPriorityUnspecified"
  /// - "low" : Low priority broadcast: for low view count HoAs or other low
  /// priority broadcasts.
  /// - "normal" : Normal priority broadcast: for regular HoAs and broadcasts.
  /// - "high" : High priority broadcast: for high profile HoAs, like PixelCorp
  /// ones.
  core.String? liveBroadcastPriority;

  /// Whether the broadcast is made for kids or not, decided by YouTube instead
  /// of the creator.
  ///
  /// This field is read only.
  core.bool? madeForKids;

  /// The broadcast's privacy status.
  ///
  /// Note that the broadcast represents exactly one YouTube video, so the
  /// privacy settings are identical to those supported for videos. In addition,
  /// you can set this field by modifying the broadcast resource or by setting
  /// the privacyStatus field of the corresponding video resource.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String? privacyStatus;

  /// The broadcast's recording status.
  /// Possible string values are:
  /// - "liveBroadcastRecordingStatusUnspecified" : No value or the value is
  /// unknown.
  /// - "notRecording" : The recording has not yet been started.
  /// - "recording" : The recording is currently on.
  /// - "recorded" : The recording is completed, and cannot be started again.
  core.String? recordingStatus;

  /// This field will be set to True if the creator declares the broadcast to be
  /// kids only: go/live-cw-work.
  core.bool? selfDeclaredMadeForKids;

  LiveBroadcastStatus({
    this.lifeCycleStatus,
    this.liveBroadcastPriority,
    this.madeForKids,
    this.privacyStatus,
    this.recordingStatus,
    this.selfDeclaredMadeForKids,
  });

  LiveBroadcastStatus.fromJson(core.Map _json)
      : this(
          lifeCycleStatus: _json.containsKey('lifeCycleStatus')
              ? _json['lifeCycleStatus'] as core.String
              : null,
          liveBroadcastPriority: _json.containsKey('liveBroadcastPriority')
              ? _json['liveBroadcastPriority'] as core.String
              : null,
          madeForKids: _json.containsKey('madeForKids')
              ? _json['madeForKids'] as core.bool
              : null,
          privacyStatus: _json.containsKey('privacyStatus')
              ? _json['privacyStatus'] as core.String
              : null,
          recordingStatus: _json.containsKey('recordingStatus')
              ? _json['recordingStatus'] as core.String
              : null,
          selfDeclaredMadeForKids: _json.containsKey('selfDeclaredMadeForKids')
              ? _json['selfDeclaredMadeForKids'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lifeCycleStatus != null) 'lifeCycleStatus': lifeCycleStatus!,
        if (liveBroadcastPriority != null)
          'liveBroadcastPriority': liveBroadcastPriority!,
        if (madeForKids != null) 'madeForKids': madeForKids!,
        if (privacyStatus != null) 'privacyStatus': privacyStatus!,
        if (recordingStatus != null) 'recordingStatus': recordingStatus!,
        if (selfDeclaredMadeForKids != null)
          'selfDeclaredMadeForKids': selfDeclaredMadeForKids!,
      };
}

/// A `__liveChatBan__` resource represents a ban for a YouTube live chat.
class LiveChatBan {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the ban.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"youtube#liveChatBan"`.
  core.String? kind;

  /// The `snippet` object contains basic details about the ban.
  LiveChatBanSnippet? snippet;

  LiveChatBan({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  LiveChatBan.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? LiveChatBanSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class LiveChatBanSnippet {
  /// The duration of a ban, only filled if the ban has type TEMPORARY.
  core.String? banDurationSeconds;
  ChannelProfileDetails? bannedUserDetails;

  /// The chat this ban is pertinent to.
  core.String? liveChatId;

  /// The type of ban.
  /// Possible string values are:
  /// - "liveChatBanTypeUnspecified" : An invalid ban type.
  /// - "permanent" : A permanent ban.
  /// - "temporary" : A temporary ban.
  core.String? type;

  LiveChatBanSnippet({
    this.banDurationSeconds,
    this.bannedUserDetails,
    this.liveChatId,
    this.type,
  });

  LiveChatBanSnippet.fromJson(core.Map _json)
      : this(
          banDurationSeconds: _json.containsKey('banDurationSeconds')
              ? _json['banDurationSeconds'] as core.String
              : null,
          bannedUserDetails: _json.containsKey('bannedUserDetails')
              ? ChannelProfileDetails.fromJson(_json['bannedUserDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          liveChatId: _json.containsKey('liveChatId')
              ? _json['liveChatId'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (banDurationSeconds != null)
          'banDurationSeconds': banDurationSeconds!,
        if (bannedUserDetails != null) 'bannedUserDetails': bannedUserDetails!,
        if (liveChatId != null) 'liveChatId': liveChatId!,
        if (type != null) 'type': type!,
      };
}

class LiveChatFanFundingEventDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String? amountDisplayString;

  /// The amount of the fund.
  core.String? amountMicros;

  /// The currency in which the fund was made.
  core.String? currency;

  /// The comment added by the user to this fan funding event.
  core.String? userComment;

  LiveChatFanFundingEventDetails({
    this.amountDisplayString,
    this.amountMicros,
    this.currency,
    this.userComment,
  });

  LiveChatFanFundingEventDetails.fromJson(core.Map _json)
      : this(
          amountDisplayString: _json.containsKey('amountDisplayString')
              ? _json['amountDisplayString'] as core.String
              : null,
          amountMicros: _json.containsKey('amountMicros')
              ? _json['amountMicros'] as core.String
              : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          userComment: _json.containsKey('userComment')
              ? _json['userComment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amountDisplayString != null)
          'amountDisplayString': amountDisplayString!,
        if (amountMicros != null) 'amountMicros': amountMicros!,
        if (currency != null) 'currency': currency!,
        if (userComment != null) 'userComment': userComment!,
      };
}

class LiveChatMemberMilestoneChatDetails {
  /// The name of the Level at which the viever is a member.
  ///
  /// The Level names are defined by the YouTube channel offering the
  /// Membership. In some situations this field isn't filled.
  core.String? memberLevelName;

  /// The total amount of months (rounded up) the viewer has been a member that
  /// granted them this Member Milestone Chat.
  ///
  /// This is the same number of months as is being displayed to YouTube users.
  core.int? memberMonth;

  /// The comment added by the member to this Member Milestone Chat.
  ///
  /// This field is empty for messages without a comment from the member.
  core.String? userComment;

  LiveChatMemberMilestoneChatDetails({
    this.memberLevelName,
    this.memberMonth,
    this.userComment,
  });

  LiveChatMemberMilestoneChatDetails.fromJson(core.Map _json)
      : this(
          memberLevelName: _json.containsKey('memberLevelName')
              ? _json['memberLevelName'] as core.String
              : null,
          memberMonth: _json.containsKey('memberMonth')
              ? _json['memberMonth'] as core.int
              : null,
          userComment: _json.containsKey('userComment')
              ? _json['userComment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberLevelName != null) 'memberLevelName': memberLevelName!,
        if (memberMonth != null) 'memberMonth': memberMonth!,
        if (userComment != null) 'userComment': userComment!,
      };
}

/// A *liveChatMessage* resource represents a chat message in a YouTube Live
/// Chat.
class LiveChatMessage {
  /// The authorDetails object contains basic details about the user that posted
  /// this message.
  LiveChatMessageAuthorDetails? authorDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the message.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveChatMessage".
  core.String? kind;

  /// The snippet object contains basic details about the message.
  LiveChatMessageSnippet? snippet;

  LiveChatMessage({
    this.authorDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  LiveChatMessage.fromJson(core.Map _json)
      : this(
          authorDetails: _json.containsKey('authorDetails')
              ? LiveChatMessageAuthorDetails.fromJson(
                  _json['authorDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? LiveChatMessageSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorDetails != null) 'authorDetails': authorDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class LiveChatMessageAuthorDetails {
  /// The YouTube channel ID.
  core.String? channelId;

  /// The channel's URL.
  core.String? channelUrl;

  /// The channel's display name.
  core.String? displayName;

  /// Whether the author is a moderator of the live chat.
  core.bool? isChatModerator;

  /// Whether the author is the owner of the live chat.
  core.bool? isChatOwner;

  /// Whether the author is a sponsor of the live chat.
  core.bool? isChatSponsor;

  /// Whether the author's identity has been verified by YouTube.
  core.bool? isVerified;

  /// The channels's avatar URL.
  core.String? profileImageUrl;

  LiveChatMessageAuthorDetails({
    this.channelId,
    this.channelUrl,
    this.displayName,
    this.isChatModerator,
    this.isChatOwner,
    this.isChatSponsor,
    this.isVerified,
    this.profileImageUrl,
  });

  LiveChatMessageAuthorDetails.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelUrl: _json.containsKey('channelUrl')
              ? _json['channelUrl'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          isChatModerator: _json.containsKey('isChatModerator')
              ? _json['isChatModerator'] as core.bool
              : null,
          isChatOwner: _json.containsKey('isChatOwner')
              ? _json['isChatOwner'] as core.bool
              : null,
          isChatSponsor: _json.containsKey('isChatSponsor')
              ? _json['isChatSponsor'] as core.bool
              : null,
          isVerified: _json.containsKey('isVerified')
              ? _json['isVerified'] as core.bool
              : null,
          profileImageUrl: _json.containsKey('profileImageUrl')
              ? _json['profileImageUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelUrl != null) 'channelUrl': channelUrl!,
        if (displayName != null) 'displayName': displayName!,
        if (isChatModerator != null) 'isChatModerator': isChatModerator!,
        if (isChatOwner != null) 'isChatOwner': isChatOwner!,
        if (isChatSponsor != null) 'isChatSponsor': isChatSponsor!,
        if (isVerified != null) 'isVerified': isVerified!,
        if (profileImageUrl != null) 'profileImageUrl': profileImageUrl!,
      };
}

class LiveChatMessageDeletedDetails {
  core.String? deletedMessageId;

  LiveChatMessageDeletedDetails({
    this.deletedMessageId,
  });

  LiveChatMessageDeletedDetails.fromJson(core.Map _json)
      : this(
          deletedMessageId: _json.containsKey('deletedMessageId')
              ? _json['deletedMessageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletedMessageId != null) 'deletedMessageId': deletedMessageId!,
      };
}

class LiveChatMessageListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;
  core.List<LiveChatMessage>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveChatMessageListResponse".
  core.String? kind;
  core.String? nextPageToken;

  /// The date and time when the underlying stream went offline.
  core.DateTime? offlineAt;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The amount of time the client should wait before polling again.
  core.int? pollingIntervalMillis;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  LiveChatMessageListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.offlineAt,
    this.pageInfo,
    this.pollingIntervalMillis,
    this.tokenPagination,
    this.visitorId,
  });

  LiveChatMessageListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => LiveChatMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          offlineAt: _json.containsKey('offlineAt')
              ? core.DateTime.parse(_json['offlineAt'] as core.String)
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          pollingIntervalMillis: _json.containsKey('pollingIntervalMillis')
              ? _json['pollingIntervalMillis'] as core.int
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (offlineAt != null) 'offlineAt': offlineAt!.toIso8601String(),
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (pollingIntervalMillis != null)
          'pollingIntervalMillis': pollingIntervalMillis!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class LiveChatMessageRetractedDetails {
  core.String? retractedMessageId;

  LiveChatMessageRetractedDetails({
    this.retractedMessageId,
  });

  LiveChatMessageRetractedDetails.fromJson(core.Map _json)
      : this(
          retractedMessageId: _json.containsKey('retractedMessageId')
              ? _json['retractedMessageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retractedMessageId != null)
          'retractedMessageId': retractedMessageId!,
      };
}

/// Next ID: 31
class LiveChatMessageSnippet {
  /// The ID of the user that authored this message, this field is not always
  /// filled.
  ///
  /// textMessageEvent - the user that wrote the message fanFundingEvent - the
  /// user that funded the broadcast newSponsorEvent - the user that just became
  /// a sponsor memberMilestoneChatEvent - the member that sent the message
  /// messageDeletedEvent - the moderator that took the action
  /// messageRetractedEvent - the author that retracted their message
  /// userBannedEvent - the moderator that took the action superChatEvent - the
  /// user that made the purchase superStickerEvent - the user that made the
  /// purchase
  core.String? authorChannelId;

  /// Contains a string that can be displayed to the user.
  ///
  /// If this field is not present the message is silent, at the moment only
  /// messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent.
  core.String? displayMessage;

  /// Details about the funding event, this is only set if the type is
  /// 'fanFundingEvent'.
  LiveChatFanFundingEventDetails? fanFundingEventDetails;

  /// Whether the message has display content that should be displayed to users.
  core.bool? hasDisplayContent;
  core.String? liveChatId;

  /// Details about the Member Milestone Chat event, this is only set if the
  /// type is 'memberMilestoneChatEvent'.
  LiveChatMemberMilestoneChatDetails? memberMilestoneChatDetails;
  LiveChatMessageDeletedDetails? messageDeletedDetails;
  LiveChatMessageRetractedDetails? messageRetractedDetails;

  /// Details about the New Member Announcement event, this is only set if the
  /// type is 'newSponsorEvent'.
  ///
  /// Please note that "member" is the new term for "sponsor".
  LiveChatNewSponsorDetails? newSponsorDetails;

  /// The date and time when the message was orignally published.
  core.DateTime? publishedAt;

  /// Details about the Super Chat event, this is only set if the type is
  /// 'superChatEvent'.
  LiveChatSuperChatDetails? superChatDetails;

  /// Details about the Super Sticker event, this is only set if the type is
  /// 'superStickerEvent'.
  LiveChatSuperStickerDetails? superStickerDetails;

  /// Details about the text message, this is only set if the type is
  /// 'textMessageEvent'.
  LiveChatTextMessageDetails? textMessageDetails;

  /// The type of message, this will always be present, it determines the
  /// contents of the message as well as which fields will be present.
  /// Possible string values are:
  /// - "invalidType"
  /// - "textMessageEvent"
  /// - "tombstone"
  /// - "fanFundingEvent"
  /// - "chatEndedEvent"
  /// - "sponsorOnlyModeStartedEvent"
  /// - "sponsorOnlyModeEndedEvent"
  /// - "newSponsorEvent"
  /// - "memberMilestoneChatEvent"
  /// - "messageDeletedEvent"
  /// - "messageRetractedEvent"
  /// - "userBannedEvent"
  /// - "superChatEvent"
  /// - "superStickerEvent"
  core.String? type;
  LiveChatUserBannedMessageDetails? userBannedDetails;

  LiveChatMessageSnippet({
    this.authorChannelId,
    this.displayMessage,
    this.fanFundingEventDetails,
    this.hasDisplayContent,
    this.liveChatId,
    this.memberMilestoneChatDetails,
    this.messageDeletedDetails,
    this.messageRetractedDetails,
    this.newSponsorDetails,
    this.publishedAt,
    this.superChatDetails,
    this.superStickerDetails,
    this.textMessageDetails,
    this.type,
    this.userBannedDetails,
  });

  LiveChatMessageSnippet.fromJson(core.Map _json)
      : this(
          authorChannelId: _json.containsKey('authorChannelId')
              ? _json['authorChannelId'] as core.String
              : null,
          displayMessage: _json.containsKey('displayMessage')
              ? _json['displayMessage'] as core.String
              : null,
          fanFundingEventDetails: _json.containsKey('fanFundingEventDetails')
              ? LiveChatFanFundingEventDetails.fromJson(
                  _json['fanFundingEventDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hasDisplayContent: _json.containsKey('hasDisplayContent')
              ? _json['hasDisplayContent'] as core.bool
              : null,
          liveChatId: _json.containsKey('liveChatId')
              ? _json['liveChatId'] as core.String
              : null,
          memberMilestoneChatDetails:
              _json.containsKey('memberMilestoneChatDetails')
                  ? LiveChatMemberMilestoneChatDetails.fromJson(
                      _json['memberMilestoneChatDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          messageDeletedDetails: _json.containsKey('messageDeletedDetails')
              ? LiveChatMessageDeletedDetails.fromJson(
                  _json['messageDeletedDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          messageRetractedDetails: _json.containsKey('messageRetractedDetails')
              ? LiveChatMessageRetractedDetails.fromJson(
                  _json['messageRetractedDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          newSponsorDetails: _json.containsKey('newSponsorDetails')
              ? LiveChatNewSponsorDetails.fromJson(_json['newSponsorDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          superChatDetails: _json.containsKey('superChatDetails')
              ? LiveChatSuperChatDetails.fromJson(_json['superChatDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          superStickerDetails: _json.containsKey('superStickerDetails')
              ? LiveChatSuperStickerDetails.fromJson(
                  _json['superStickerDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textMessageDetails: _json.containsKey('textMessageDetails')
              ? LiveChatTextMessageDetails.fromJson(_json['textMessageDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          userBannedDetails: _json.containsKey('userBannedDetails')
              ? LiveChatUserBannedMessageDetails.fromJson(
                  _json['userBannedDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorChannelId != null) 'authorChannelId': authorChannelId!,
        if (displayMessage != null) 'displayMessage': displayMessage!,
        if (fanFundingEventDetails != null)
          'fanFundingEventDetails': fanFundingEventDetails!,
        if (hasDisplayContent != null) 'hasDisplayContent': hasDisplayContent!,
        if (liveChatId != null) 'liveChatId': liveChatId!,
        if (memberMilestoneChatDetails != null)
          'memberMilestoneChatDetails': memberMilestoneChatDetails!,
        if (messageDeletedDetails != null)
          'messageDeletedDetails': messageDeletedDetails!,
        if (messageRetractedDetails != null)
          'messageRetractedDetails': messageRetractedDetails!,
        if (newSponsorDetails != null) 'newSponsorDetails': newSponsorDetails!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (superChatDetails != null) 'superChatDetails': superChatDetails!,
        if (superStickerDetails != null)
          'superStickerDetails': superStickerDetails!,
        if (textMessageDetails != null)
          'textMessageDetails': textMessageDetails!,
        if (type != null) 'type': type!,
        if (userBannedDetails != null) 'userBannedDetails': userBannedDetails!,
      };
}

/// A *liveChatModerator* resource represents a moderator for a YouTube live
/// chat.
///
/// A chat moderator has the ability to ban/unban users from a chat, remove
/// message, etc.
class LiveChatModerator {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the moderator.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveChatModerator".
  core.String? kind;

  /// The snippet object contains basic details about the moderator.
  LiveChatModeratorSnippet? snippet;

  LiveChatModerator({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  LiveChatModerator.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? LiveChatModeratorSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class LiveChatModeratorListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of moderators that match the request criteria.
  core.List<LiveChatModerator>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveChatModeratorListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  LiveChatModeratorListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  LiveChatModeratorListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => LiveChatModerator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class LiveChatModeratorSnippet {
  /// The ID of the live chat this moderator can act on.
  core.String? liveChatId;

  /// Details about the moderator.
  ChannelProfileDetails? moderatorDetails;

  LiveChatModeratorSnippet({
    this.liveChatId,
    this.moderatorDetails,
  });

  LiveChatModeratorSnippet.fromJson(core.Map _json)
      : this(
          liveChatId: _json.containsKey('liveChatId')
              ? _json['liveChatId'] as core.String
              : null,
          moderatorDetails: _json.containsKey('moderatorDetails')
              ? ChannelProfileDetails.fromJson(_json['moderatorDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (liveChatId != null) 'liveChatId': liveChatId!,
        if (moderatorDetails != null) 'moderatorDetails': moderatorDetails!,
      };
}

class LiveChatNewSponsorDetails {
  /// If the viewer just had upgraded from a lower level.
  ///
  /// For viewers that were not members at the time of purchase, this field is
  /// false.
  core.bool? isUpgrade;

  /// The name of the Level that the viewer just had joined.
  ///
  /// The Level names are defined by the YouTube channel offering the
  /// Membership. In some situations this field isn't filled.
  core.String? memberLevelName;

  LiveChatNewSponsorDetails({
    this.isUpgrade,
    this.memberLevelName,
  });

  LiveChatNewSponsorDetails.fromJson(core.Map _json)
      : this(
          isUpgrade: _json.containsKey('isUpgrade')
              ? _json['isUpgrade'] as core.bool
              : null,
          memberLevelName: _json.containsKey('memberLevelName')
              ? _json['memberLevelName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isUpgrade != null) 'isUpgrade': isUpgrade!,
        if (memberLevelName != null) 'memberLevelName': memberLevelName!,
      };
}

class LiveChatSuperChatDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String? amountDisplayString;

  /// The amount purchased by the user, in micros (1,750,000 micros = 1.75).
  core.String? amountMicros;

  /// The currency in which the purchase was made.
  core.String? currency;

  /// The tier in which the amount belongs.
  ///
  /// Lower amounts belong to lower tiers. The lowest tier is 1.
  core.int? tier;

  /// The comment added by the user to this Super Chat event.
  core.String? userComment;

  LiveChatSuperChatDetails({
    this.amountDisplayString,
    this.amountMicros,
    this.currency,
    this.tier,
    this.userComment,
  });

  LiveChatSuperChatDetails.fromJson(core.Map _json)
      : this(
          amountDisplayString: _json.containsKey('amountDisplayString')
              ? _json['amountDisplayString'] as core.String
              : null,
          amountMicros: _json.containsKey('amountMicros')
              ? _json['amountMicros'] as core.String
              : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.int : null,
          userComment: _json.containsKey('userComment')
              ? _json['userComment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amountDisplayString != null)
          'amountDisplayString': amountDisplayString!,
        if (amountMicros != null) 'amountMicros': amountMicros!,
        if (currency != null) 'currency': currency!,
        if (tier != null) 'tier': tier!,
        if (userComment != null) 'userComment': userComment!,
      };
}

class LiveChatSuperStickerDetails {
  /// A rendered string that displays the fund amount and currency to the user.
  core.String? amountDisplayString;

  /// The amount purchased by the user, in micros (1,750,000 micros = 1.75).
  core.String? amountMicros;

  /// The currency in which the purchase was made.
  core.String? currency;

  /// Information about the Super Sticker.
  SuperStickerMetadata? superStickerMetadata;

  /// The tier in which the amount belongs.
  ///
  /// Lower amounts belong to lower tiers. The lowest tier is 1.
  core.int? tier;

  LiveChatSuperStickerDetails({
    this.amountDisplayString,
    this.amountMicros,
    this.currency,
    this.superStickerMetadata,
    this.tier,
  });

  LiveChatSuperStickerDetails.fromJson(core.Map _json)
      : this(
          amountDisplayString: _json.containsKey('amountDisplayString')
              ? _json['amountDisplayString'] as core.String
              : null,
          amountMicros: _json.containsKey('amountMicros')
              ? _json['amountMicros'] as core.String
              : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          superStickerMetadata: _json.containsKey('superStickerMetadata')
              ? SuperStickerMetadata.fromJson(_json['superStickerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amountDisplayString != null)
          'amountDisplayString': amountDisplayString!,
        if (amountMicros != null) 'amountMicros': amountMicros!,
        if (currency != null) 'currency': currency!,
        if (superStickerMetadata != null)
          'superStickerMetadata': superStickerMetadata!,
        if (tier != null) 'tier': tier!,
      };
}

class LiveChatTextMessageDetails {
  /// The user's message.
  core.String? messageText;

  LiveChatTextMessageDetails({
    this.messageText,
  });

  LiveChatTextMessageDetails.fromJson(core.Map _json)
      : this(
          messageText: _json.containsKey('messageText')
              ? _json['messageText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageText != null) 'messageText': messageText!,
      };
}

class LiveChatUserBannedMessageDetails {
  /// The duration of the ban.
  ///
  /// This property is only present if the banType is temporary.
  core.String? banDurationSeconds;

  /// The type of ban.
  /// Possible string values are:
  /// - "permanent"
  /// - "temporary"
  core.String? banType;

  /// The details of the user that was banned.
  ChannelProfileDetails? bannedUserDetails;

  LiveChatUserBannedMessageDetails({
    this.banDurationSeconds,
    this.banType,
    this.bannedUserDetails,
  });

  LiveChatUserBannedMessageDetails.fromJson(core.Map _json)
      : this(
          banDurationSeconds: _json.containsKey('banDurationSeconds')
              ? _json['banDurationSeconds'] as core.String
              : null,
          banType: _json.containsKey('banType')
              ? _json['banType'] as core.String
              : null,
          bannedUserDetails: _json.containsKey('bannedUserDetails')
              ? ChannelProfileDetails.fromJson(_json['bannedUserDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (banDurationSeconds != null)
          'banDurationSeconds': banDurationSeconds!,
        if (banType != null) 'banType': banType!,
        if (bannedUserDetails != null) 'bannedUserDetails': bannedUserDetails!,
      };
}

/// A live stream describes a live ingestion point.
class LiveStream {
  /// The cdn object defines the live stream's content delivery network (CDN)
  /// settings.
  ///
  /// These settings provide details about the manner in which you stream your
  /// content to YouTube.
  CdnSettings? cdn;

  /// The content_details object contains information about the stream,
  /// including the closed captions ingestion URL.
  LiveStreamContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the stream.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveStream".
  core.String? kind;

  /// The snippet object contains basic details about the stream, including its
  /// channel, title, and description.
  LiveStreamSnippet? snippet;

  /// The status object contains information about live stream's status.
  LiveStreamStatus? status;

  LiveStream({
    this.cdn,
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
    this.status,
  });

  LiveStream.fromJson(core.Map _json)
      : this(
          cdn: _json.containsKey('cdn')
              ? CdnSettings.fromJson(
                  _json['cdn'] as core.Map<core.String, core.dynamic>)
              : null,
          contentDetails: _json.containsKey('contentDetails')
              ? LiveStreamContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? LiveStreamSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? LiveStreamStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cdn != null) 'cdn': cdn!,
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
        if (status != null) 'status': status!,
      };
}

class LiveStreamConfigurationIssue {
  /// The long-form description of the issue and how to resolve it.
  core.String? description;

  /// The short-form reason for this issue.
  core.String? reason;

  /// How severe this issue is to the stream.
  /// Possible string values are:
  /// - "info"
  /// - "warning"
  /// - "error"
  core.String? severity;

  /// The kind of error happening.
  /// Possible string values are:
  /// - "gopSizeOver"
  /// - "gopSizeLong"
  /// - "gopSizeShort"
  /// - "openGop"
  /// - "badContainer"
  /// - "audioBitrateHigh"
  /// - "audioBitrateLow"
  /// - "audioSampleRate"
  /// - "bitrateHigh"
  /// - "bitrateLow"
  /// - "audioCodec"
  /// - "videoCodec"
  /// - "noAudioStream"
  /// - "noVideoStream"
  /// - "multipleVideoStreams"
  /// - "multipleAudioStreams"
  /// - "audioTooManyChannels"
  /// - "interlacedVideo"
  /// - "frameRateHigh"
  /// - "resolutionMismatch"
  /// - "videoCodecMismatch"
  /// - "videoInterlaceMismatch"
  /// - "videoProfileMismatch"
  /// - "videoBitrateMismatch"
  /// - "framerateMismatch"
  /// - "gopMismatch"
  /// - "audioSampleRateMismatch"
  /// - "audioStereoMismatch"
  /// - "audioCodecMismatch"
  /// - "audioBitrateMismatch"
  /// - "videoResolutionSuboptimal"
  /// - "videoResolutionUnsupported"
  /// - "videoIngestionStarved"
  /// - "videoIngestionFasterThanRealtime"
  core.String? type;

  LiveStreamConfigurationIssue({
    this.description,
    this.reason,
    this.severity,
    this.type,
  });

  LiveStreamConfigurationIssue.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (reason != null) 'reason': reason!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
      };
}

/// Detailed settings of a stream.
class LiveStreamContentDetails {
  /// The ingestion URL where the closed captions of this stream are sent.
  core.String? closedCaptionsIngestionUrl;

  /// Indicates whether the stream is reusable, which means that it can be bound
  /// to multiple broadcasts.
  ///
  /// It is common for broadcasters to reuse the same stream for many different
  /// broadcasts if those broadcasts occur at different times. If you set this
  /// value to false, then the stream will not be reusable, which means that it
  /// can only be bound to one broadcast. Non-reusable streams differ from
  /// reusable streams in the following ways: - A non-reusable stream can only
  /// be bound to one broadcast. - A non-reusable stream might be deleted by an
  /// automated process after the broadcast ends. - The liveStreams.list method
  /// does not list non-reusable streams if you call the method and set the mine
  /// parameter to true. The only way to use that method to retrieve the
  /// resource for a non-reusable stream is to use the id parameter to identify
  /// the stream.
  core.bool? isReusable;

  LiveStreamContentDetails({
    this.closedCaptionsIngestionUrl,
    this.isReusable,
  });

  LiveStreamContentDetails.fromJson(core.Map _json)
      : this(
          closedCaptionsIngestionUrl:
              _json.containsKey('closedCaptionsIngestionUrl')
                  ? _json['closedCaptionsIngestionUrl'] as core.String
                  : null,
          isReusable: _json.containsKey('isReusable')
              ? _json['isReusable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (closedCaptionsIngestionUrl != null)
          'closedCaptionsIngestionUrl': closedCaptionsIngestionUrl!,
        if (isReusable != null) 'isReusable': isReusable!,
      };
}

class LiveStreamHealthStatus {
  /// The configurations issues on this stream
  core.List<LiveStreamConfigurationIssue>? configurationIssues;

  /// The last time this status was updated (in seconds)
  core.String? lastUpdateTimeSeconds;

  /// The status code of this stream
  /// Possible string values are:
  /// - "good"
  /// - "ok"
  /// - "bad"
  /// - "noData"
  /// - "revoked"
  core.String? status;

  LiveStreamHealthStatus({
    this.configurationIssues,
    this.lastUpdateTimeSeconds,
    this.status,
  });

  LiveStreamHealthStatus.fromJson(core.Map _json)
      : this(
          configurationIssues: _json.containsKey('configurationIssues')
              ? (_json['configurationIssues'] as core.List)
                  .map((value) => LiveStreamConfigurationIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastUpdateTimeSeconds: _json.containsKey('lastUpdateTimeSeconds')
              ? _json['lastUpdateTimeSeconds'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configurationIssues != null)
          'configurationIssues': configurationIssues!,
        if (lastUpdateTimeSeconds != null)
          'lastUpdateTimeSeconds': lastUpdateTimeSeconds!,
        if (status != null) 'status': status!,
      };
}

class LiveStreamListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of live streams that match the request criteria.
  core.List<LiveStream>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#liveStreamListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  LiveStreamListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  LiveStreamListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => LiveStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class LiveStreamSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that is
  /// transmitting the stream.
  core.String? channelId;

  /// The stream's description.
  ///
  /// The value cannot be longer than 10000 characters.
  core.String? description;
  core.bool? isDefaultStream;

  /// The date and time that the stream was created.
  core.DateTime? publishedAt;

  /// The stream's title.
  ///
  /// The value must be between 1 and 128 characters long.
  core.String? title;

  LiveStreamSnippet({
    this.channelId,
    this.description,
    this.isDefaultStream,
    this.publishedAt,
    this.title,
  });

  LiveStreamSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          isDefaultStream: _json.containsKey('isDefaultStream')
              ? _json['isDefaultStream'] as core.bool
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (description != null) 'description': description!,
        if (isDefaultStream != null) 'isDefaultStream': isDefaultStream!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (title != null) 'title': title!,
      };
}

/// Brief description of the live stream status.
class LiveStreamStatus {
  /// The health status of the stream.
  LiveStreamHealthStatus? healthStatus;

  ///
  /// Possible string values are:
  /// - "created"
  /// - "ready"
  /// - "active"
  /// - "inactive"
  /// - "error"
  core.String? streamStatus;

  LiveStreamStatus({
    this.healthStatus,
    this.streamStatus,
  });

  LiveStreamStatus.fromJson(core.Map _json)
      : this(
          healthStatus: _json.containsKey('healthStatus')
              ? LiveStreamHealthStatus.fromJson(
                  _json['healthStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          streamStatus: _json.containsKey('streamStatus')
              ? _json['streamStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (healthStatus != null) 'healthStatus': healthStatus!,
        if (streamStatus != null) 'streamStatus': streamStatus!,
      };
}

class LocalizedProperty {
  core.String? default_;

  /// The language of the default property.
  LanguageTag? defaultLanguage;
  core.List<LocalizedString>? localized;

  LocalizedProperty({
    this.default_,
    this.defaultLanguage,
    this.localized,
  });

  LocalizedProperty.fromJson(core.Map _json)
      : this(
          default_: _json.containsKey('default')
              ? _json['default'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? LanguageTag.fromJson(_json['defaultLanguage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localized: _json.containsKey('localized')
              ? (_json['localized'] as core.List)
                  .map((value) => LocalizedString.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (localized != null) 'localized': localized!,
      };
}

class LocalizedString {
  core.String? language;
  core.String? value;

  LocalizedString({
    this.language,
    this.value,
  });

  LocalizedString.fromJson(core.Map _json)
      : this(
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (language != null) 'language': language!,
        if (value != null) 'value': value!,
      };
}

/// A *member* resource represents a member for a YouTube channel.
///
/// A member provides recurring monetary support to a creator and receives
/// special benefits.
class Member {
  /// Etag of this resource.
  core.String? etag;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#member".
  core.String? kind;

  /// The snippet object contains basic details about the member.
  MemberSnippet? snippet;

  Member({
    this.etag,
    this.kind,
    this.snippet,
  });

  Member.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? MemberSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class MemberListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of members that match the request criteria.
  core.List<Member>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#memberListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;
  PageInfo? pageInfo;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  MemberListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.tokenPagination,
    this.visitorId,
  });

  MemberListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Member.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class MemberSnippet {
  /// The id of the channel that's offering memberships.
  core.String? creatorChannelId;

  /// Details about the member.
  ChannelProfileDetails? memberDetails;

  /// Details about the user's membership.
  MembershipsDetails? membershipsDetails;

  MemberSnippet({
    this.creatorChannelId,
    this.memberDetails,
    this.membershipsDetails,
  });

  MemberSnippet.fromJson(core.Map _json)
      : this(
          creatorChannelId: _json.containsKey('creatorChannelId')
              ? _json['creatorChannelId'] as core.String
              : null,
          memberDetails: _json.containsKey('memberDetails')
              ? ChannelProfileDetails.fromJson(
                  _json['memberDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          membershipsDetails: _json.containsKey('membershipsDetails')
              ? MembershipsDetails.fromJson(_json['membershipsDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatorChannelId != null) 'creatorChannelId': creatorChannelId!,
        if (memberDetails != null) 'memberDetails': memberDetails!,
        if (membershipsDetails != null)
          'membershipsDetails': membershipsDetails!,
      };
}

class MembershipsDetails {
  /// Ids of all levels that the user has access to.
  ///
  /// This includes the currently active level and all other levels that are
  /// included because of a higher purchase.
  core.List<core.String>? accessibleLevels;

  /// Id of the highest level that the user has access to at the moment.
  core.String? highestAccessibleLevel;

  /// Display name for the highest level that the user has access to at the
  /// moment.
  core.String? highestAccessibleLevelDisplayName;

  /// Data about memberships duration without taking into consideration pricing
  /// levels.
  MembershipsDuration? membershipsDuration;

  /// Data about memberships duration on particular pricing levels.
  core.List<MembershipsDurationAtLevel>? membershipsDurationAtLevels;

  MembershipsDetails({
    this.accessibleLevels,
    this.highestAccessibleLevel,
    this.highestAccessibleLevelDisplayName,
    this.membershipsDuration,
    this.membershipsDurationAtLevels,
  });

  MembershipsDetails.fromJson(core.Map _json)
      : this(
          accessibleLevels: _json.containsKey('accessibleLevels')
              ? (_json['accessibleLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          highestAccessibleLevel: _json.containsKey('highestAccessibleLevel')
              ? _json['highestAccessibleLevel'] as core.String
              : null,
          highestAccessibleLevelDisplayName:
              _json.containsKey('highestAccessibleLevelDisplayName')
                  ? _json['highestAccessibleLevelDisplayName'] as core.String
                  : null,
          membershipsDuration: _json.containsKey('membershipsDuration')
              ? MembershipsDuration.fromJson(_json['membershipsDuration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          membershipsDurationAtLevels:
              _json.containsKey('membershipsDurationAtLevels')
                  ? (_json['membershipsDurationAtLevels'] as core.List)
                      .map((value) => MembershipsDurationAtLevel.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibleLevels != null) 'accessibleLevels': accessibleLevels!,
        if (highestAccessibleLevel != null)
          'highestAccessibleLevel': highestAccessibleLevel!,
        if (highestAccessibleLevelDisplayName != null)
          'highestAccessibleLevelDisplayName':
              highestAccessibleLevelDisplayName!,
        if (membershipsDuration != null)
          'membershipsDuration': membershipsDuration!,
        if (membershipsDurationAtLevels != null)
          'membershipsDurationAtLevels': membershipsDurationAtLevels!,
      };
}

class MembershipsDuration {
  /// The date and time when the user became a continuous member across all
  /// levels.
  core.String? memberSince;

  /// The cumulative time the user has been a member across all levels in
  /// complete months (the time is rounded down to the nearest integer).
  core.int? memberTotalDurationMonths;

  MembershipsDuration({
    this.memberSince,
    this.memberTotalDurationMonths,
  });

  MembershipsDuration.fromJson(core.Map _json)
      : this(
          memberSince: _json.containsKey('memberSince')
              ? _json['memberSince'] as core.String
              : null,
          memberTotalDurationMonths:
              _json.containsKey('memberTotalDurationMonths')
                  ? _json['memberTotalDurationMonths'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memberSince != null) 'memberSince': memberSince!,
        if (memberTotalDurationMonths != null)
          'memberTotalDurationMonths': memberTotalDurationMonths!,
      };
}

class MembershipsDurationAtLevel {
  /// Pricing level ID.
  core.String? level;

  /// The date and time when the user became a continuous member for the given
  /// level.
  core.String? memberSince;

  /// The cumulative time the user has been a member for the given level in
  /// complete months (the time is rounded down to the nearest integer).
  core.int? memberTotalDurationMonths;

  MembershipsDurationAtLevel({
    this.level,
    this.memberSince,
    this.memberTotalDurationMonths,
  });

  MembershipsDurationAtLevel.fromJson(core.Map _json)
      : this(
          level:
              _json.containsKey('level') ? _json['level'] as core.String : null,
          memberSince: _json.containsKey('memberSince')
              ? _json['memberSince'] as core.String
              : null,
          memberTotalDurationMonths:
              _json.containsKey('memberTotalDurationMonths')
                  ? _json['memberTotalDurationMonths'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (level != null) 'level': level!,
        if (memberSince != null) 'memberSince': memberSince!,
        if (memberTotalDurationMonths != null)
          'memberTotalDurationMonths': memberTotalDurationMonths!,
      };
}

/// A *membershipsLevel* resource represents an offer made by YouTube creators
/// for their fans.
///
/// Users can become members of the channel by joining one of the available
/// levels. They will provide recurring monetary support and receives special
/// benefits.
class MembershipsLevel {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the memberships level.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#membershipsLevelListResponse".
  core.String? kind;

  /// The snippet object contains basic details about the level.
  MembershipsLevelSnippet? snippet;

  MembershipsLevel({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  MembershipsLevel.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? MembershipsLevelSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class MembershipsLevelListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of pricing levels offered by a creator to the fans.
  core.List<MembershipsLevel>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#membershipsLevelListResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  MembershipsLevelListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  MembershipsLevelListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => MembershipsLevel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class MembershipsLevelSnippet {
  /// The id of the channel that's offering channel memberships.
  core.String? creatorChannelId;

  /// Details about the pricing level.
  LevelDetails? levelDetails;

  MembershipsLevelSnippet({
    this.creatorChannelId,
    this.levelDetails,
  });

  MembershipsLevelSnippet.fromJson(core.Map _json)
      : this(
          creatorChannelId: _json.containsKey('creatorChannelId')
              ? _json['creatorChannelId'] as core.String
              : null,
          levelDetails: _json.containsKey('levelDetails')
              ? LevelDetails.fromJson(
                  _json['levelDetails'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatorChannelId != null) 'creatorChannelId': creatorChannelId!,
        if (levelDetails != null) 'levelDetails': levelDetails!,
      };
}

/// Settings and Info of the monitor stream
class MonitorStreamInfo {
  /// If you have set the enableMonitorStream property to true, then this
  /// property determines the length of the live broadcast delay.
  core.int? broadcastStreamDelayMs;

  /// HTML code that embeds a player that plays the monitor stream.
  core.String? embedHtml;

  /// This value determines whether the monitor stream is enabled for the
  /// broadcast.
  ///
  /// If the monitor stream is enabled, then YouTube will broadcast the event
  /// content on a special stream intended only for the broadcaster's
  /// consumption. The broadcaster can use the stream to review the event
  /// content and also to identify the optimal times to insert cuepoints. You
  /// need to set this value to true if you intend to have a broadcast delay for
  /// your event. *Note:* This property cannot be updated once the broadcast is
  /// in the testing or live state.
  core.bool? enableMonitorStream;

  MonitorStreamInfo({
    this.broadcastStreamDelayMs,
    this.embedHtml,
    this.enableMonitorStream,
  });

  MonitorStreamInfo.fromJson(core.Map _json)
      : this(
          broadcastStreamDelayMs: _json.containsKey('broadcastStreamDelayMs')
              ? _json['broadcastStreamDelayMs'] as core.int
              : null,
          embedHtml: _json.containsKey('embedHtml')
              ? _json['embedHtml'] as core.String
              : null,
          enableMonitorStream: _json.containsKey('enableMonitorStream')
              ? _json['enableMonitorStream'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (broadcastStreamDelayMs != null)
          'broadcastStreamDelayMs': broadcastStreamDelayMs!,
        if (embedHtml != null) 'embedHtml': embedHtml!,
        if (enableMonitorStream != null)
          'enableMonitorStream': enableMonitorStream!,
      };
}

/// Paging details for lists of resources, including total number of items
/// available and number of resources returned in a single page.
class PageInfo {
  /// The number of results included in the API response.
  core.int? resultsPerPage;

  /// The total number of results in the result set.
  core.int? totalResults;

  PageInfo({
    this.resultsPerPage,
    this.totalResults,
  });

  PageInfo.fromJson(core.Map _json)
      : this(
          resultsPerPage: _json.containsKey('resultsPerPage')
              ? _json['resultsPerPage'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resultsPerPage != null) 'resultsPerPage': resultsPerPage!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// A *playlist* resource represents a YouTube playlist.
///
/// A playlist is a collection of videos that can be viewed sequentially and
/// shared with other users. A playlist can contain up to 200 videos, and
/// YouTube does not limit the number of playlists that each user creates. By
/// default, playlists are publicly visible to other users, but playlists can be
/// public or private. YouTube also uses playlists to identify special
/// collections of videos for a channel, such as: - uploaded videos - favorite
/// videos - positively rated (liked) videos - watch history - watch later To be
/// more specific, these lists are associated with a channel, which is a
/// collection of a person, group, or company's videos, playlists, and other
/// YouTube information. You can retrieve the playlist IDs for each of these
/// lists from the channel resource for a given channel. You can then use the
/// playlistItems.list method to retrieve any of those lists. You can also add
/// or remove items from those lists by calling the playlistItems.insert and
/// playlistItems.delete methods.
class Playlist {
  /// The contentDetails object contains information like video count.
  PlaylistContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the playlist.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#playlist".
  core.String? kind;

  /// Localizations for different languages
  core.Map<core.String, PlaylistLocalization>? localizations;

  /// The player object contains information that you would use to play the
  /// playlist in an embedded player.
  PlaylistPlayer? player;

  /// The snippet object contains basic details about the playlist, such as its
  /// title and description.
  PlaylistSnippet? snippet;

  /// The status object contains status information for the playlist.
  PlaylistStatus? status;

  Playlist({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.localizations,
    this.player,
    this.snippet,
    this.status,
  });

  Playlist.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? PlaylistContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          localizations: _json.containsKey('localizations')
              ? (_json['localizations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    PlaylistLocalization.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          player: _json.containsKey('player')
              ? PlaylistPlayer.fromJson(
                  _json['player'] as core.Map<core.String, core.dynamic>)
              : null,
          snippet: _json.containsKey('snippet')
              ? PlaylistSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? PlaylistStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (localizations != null) 'localizations': localizations!,
        if (player != null) 'player': player!,
        if (snippet != null) 'snippet': snippet!,
        if (status != null) 'status': status!,
      };
}

class PlaylistContentDetails {
  /// The number of videos in the playlist.
  core.int? itemCount;

  PlaylistContentDetails({
    this.itemCount,
  });

  PlaylistContentDetails.fromJson(core.Map _json)
      : this(
          itemCount: _json.containsKey('itemCount')
              ? _json['itemCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemCount != null) 'itemCount': itemCount!,
      };
}

/// A *playlistItem* resource identifies another resource, such as a video, that
/// is included in a playlist.
///
/// In addition, the playlistItem resource contains details about the included
/// resource that pertain specifically to how that resource is used in that
/// playlist. YouTube uses playlists to identify special collections of videos
/// for a channel, such as: - uploaded videos - favorite videos - positively
/// rated (liked) videos - watch history - watch later To be more specific,
/// these lists are associated with a channel, which is a collection of a
/// person, group, or company's videos, playlists, and other YouTube
/// information. You can retrieve the playlist IDs for each of these lists from
/// the channel resource for a given channel. You can then use the
/// playlistItems.list method to retrieve any of those lists. You can also add
/// or remove items from those lists by calling the playlistItems.insert and
/// playlistItems.delete methods. For example, if a user gives a positive rating
/// to a video, you would insert that video into the liked videos playlist for
/// that user's channel.
class PlaylistItem {
  /// The contentDetails object is included in the resource if the included item
  /// is a YouTube video.
  ///
  /// The object contains additional information about the video.
  PlaylistItemContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the playlist item.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#playlistItem".
  core.String? kind;

  /// The snippet object contains basic details about the playlist item, such as
  /// its title and position in the playlist.
  PlaylistItemSnippet? snippet;

  /// The status object contains information about the playlist item's privacy
  /// status.
  PlaylistItemStatus? status;

  PlaylistItem({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
    this.status,
  });

  PlaylistItem.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? PlaylistItemContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? PlaylistItemSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? PlaylistItemStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
        if (status != null) 'status': status!,
      };
}

class PlaylistItemContentDetails {
  /// The time, measured in seconds from the start of the video, when the video
  /// should stop playing.
  ///
  /// (The playlist owner can specify the times when the video should start and
  /// stop playing when the video is played in the context of the playlist.) By
  /// default, assume that the video.endTime is the end of the video.
  core.String? endAt;

  /// A user-generated note for this item.
  core.String? note;

  /// The time, measured in seconds from the start of the video, when the video
  /// should start playing.
  ///
  /// (The playlist owner can specify the times when the video should start and
  /// stop playing when the video is played in the context of the playlist.) The
  /// default value is 0.
  core.String? startAt;

  /// The ID that YouTube uses to uniquely identify a video.
  ///
  /// To retrieve the video resource, set the id query parameter to this value
  /// in your API request.
  core.String? videoId;

  /// The date and time that the video was published to YouTube.
  core.DateTime? videoPublishedAt;

  PlaylistItemContentDetails({
    this.endAt,
    this.note,
    this.startAt,
    this.videoId,
    this.videoPublishedAt,
  });

  PlaylistItemContentDetails.fromJson(core.Map _json)
      : this(
          endAt:
              _json.containsKey('endAt') ? _json['endAt'] as core.String : null,
          note: _json.containsKey('note') ? _json['note'] as core.String : null,
          startAt: _json.containsKey('startAt')
              ? _json['startAt'] as core.String
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
          videoPublishedAt: _json.containsKey('videoPublishedAt')
              ? core.DateTime.parse(_json['videoPublishedAt'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endAt != null) 'endAt': endAt!,
        if (note != null) 'note': note!,
        if (startAt != null) 'startAt': startAt!,
        if (videoId != null) 'videoId': videoId!,
        if (videoPublishedAt != null)
          'videoPublishedAt': videoPublishedAt!.toIso8601String(),
      };
}

class PlaylistItemListResponse {
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of playlist items that match the request criteria.
  core.List<PlaylistItem>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#playlistItemListResponse". Etag of this
  /// resource.
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  PlaylistItemListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  PlaylistItemListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => PlaylistItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a playlist, including title, description and thumbnails.
///
/// Basic details of a YouTube Playlist item provided by the author. Next ID: 15
class PlaylistItemSnippet {
  /// The ID that YouTube uses to uniquely identify the user that added the item
  /// to the playlist.
  core.String? channelId;

  /// Channel title for the channel that the playlist item belongs to.
  core.String? channelTitle;

  /// The item's description.
  core.String? description;

  /// The ID that YouTube uses to uniquely identify thGe playlist that the
  /// playlist item is in.
  core.String? playlistId;

  /// The order in which the item appears in the playlist.
  ///
  /// The value uses a zero-based index, so the first item has a position of 0,
  /// the second item has a position of 1, and so forth.
  core.int? position;

  /// The date and time that the item was added to the playlist.
  core.DateTime? publishedAt;

  /// The id object contains information that can be used to uniquely identify
  /// the resource that is included in the playlist as the playlist item.
  ResourceId? resourceId;

  /// A map of thumbnail images associated with the playlist item.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The item's title.
  core.String? title;

  /// Channel id for the channel this video belongs to.
  core.String? videoOwnerChannelId;

  /// Channel title for the channel this video belongs to.
  core.String? videoOwnerChannelTitle;

  PlaylistItemSnippet({
    this.channelId,
    this.channelTitle,
    this.description,
    this.playlistId,
    this.position,
    this.publishedAt,
    this.resourceId,
    this.thumbnails,
    this.title,
    this.videoOwnerChannelId,
    this.videoOwnerChannelTitle,
  });

  PlaylistItemSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          playlistId: _json.containsKey('playlistId')
              ? _json['playlistId'] as core.String
              : null,
          position: _json.containsKey('position')
              ? _json['position'] as core.int
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          videoOwnerChannelId: _json.containsKey('videoOwnerChannelId')
              ? _json['videoOwnerChannelId'] as core.String
              : null,
          videoOwnerChannelTitle: _json.containsKey('videoOwnerChannelTitle')
              ? _json['videoOwnerChannelTitle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (description != null) 'description': description!,
        if (playlistId != null) 'playlistId': playlistId!,
        if (position != null) 'position': position!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (resourceId != null) 'resourceId': resourceId!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
        if (videoOwnerChannelId != null)
          'videoOwnerChannelId': videoOwnerChannelId!,
        if (videoOwnerChannelTitle != null)
          'videoOwnerChannelTitle': videoOwnerChannelTitle!,
      };
}

/// Information about the playlist item's privacy status.
class PlaylistItemStatus {
  /// This resource's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String? privacyStatus;

  PlaylistItemStatus({
    this.privacyStatus,
  });

  PlaylistItemStatus.fromJson(core.Map _json)
      : this(
          privacyStatus: _json.containsKey('privacyStatus')
              ? _json['privacyStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privacyStatus != null) 'privacyStatus': privacyStatus!,
      };
}

class PlaylistListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of playlists that match the request criteria
  core.List<Playlist>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#playlistListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  PlaylistListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  PlaylistListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Playlist.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Playlist localization setting
class PlaylistLocalization {
  /// The localized strings for playlist's description.
  core.String? description;

  /// The localized strings for playlist's title.
  core.String? title;

  PlaylistLocalization({
    this.description,
    this.title,
  });

  PlaylistLocalization.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

class PlaylistPlayer {
  /// An <iframe> tag that embeds a player that will play the playlist.
  core.String? embedHtml;

  PlaylistPlayer({
    this.embedHtml,
  });

  PlaylistPlayer.fromJson(core.Map _json)
      : this(
          embedHtml: _json.containsKey('embedHtml')
              ? _json['embedHtml'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (embedHtml != null) 'embedHtml': embedHtml!,
      };
}

/// Basic details about a playlist, including title, description and thumbnails.
class PlaylistSnippet {
  /// The ID that YouTube uses to uniquely identify the channel that published
  /// the playlist.
  core.String? channelId;

  /// The channel title of the channel that the video belongs to.
  core.String? channelTitle;

  /// The language of the playlist's default title and description.
  core.String? defaultLanguage;

  /// The playlist's description.
  core.String? description;

  /// Localized title and description, read-only.
  PlaylistLocalization? localized;

  /// The date and time that the playlist was created.
  core.DateTime? publishedAt;

  /// Keyword tags associated with the playlist.
  core.List<core.String>? tags;

  /// Note: if the playlist has a custom thumbnail, this field will not be
  /// populated.
  ///
  /// The video id selected by the user that will be used as the thumbnail of
  /// this playlist. This field defaults to the first publicly viewable video in
  /// the playlist, if: 1. The user has never selected a video to be the
  /// thumbnail of the playlist. 2. The user selects a video to be the
  /// thumbnail, and then removes that video from the playlist. 3. The user
  /// selects a non-owned video to be the thumbnail, but that video becomes
  /// private, or gets deleted.
  core.String? thumbnailVideoId;

  /// A map of thumbnail images associated with the playlist.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The playlist's title.
  core.String? title;

  PlaylistSnippet({
    this.channelId,
    this.channelTitle,
    this.defaultLanguage,
    this.description,
    this.localized,
    this.publishedAt,
    this.tags,
    this.thumbnailVideoId,
    this.thumbnails,
    this.title,
  });

  PlaylistSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          localized: _json.containsKey('localized')
              ? PlaylistLocalization.fromJson(
                  _json['localized'] as core.Map<core.String, core.dynamic>)
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          thumbnailVideoId: _json.containsKey('thumbnailVideoId')
              ? _json['thumbnailVideoId'] as core.String
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (description != null) 'description': description!,
        if (localized != null) 'localized': localized!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (tags != null) 'tags': tags!,
        if (thumbnailVideoId != null) 'thumbnailVideoId': thumbnailVideoId!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

class PlaylistStatus {
  /// The playlist's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String? privacyStatus;

  PlaylistStatus({
    this.privacyStatus,
  });

  PlaylistStatus.fromJson(core.Map _json)
      : this(
          privacyStatus: _json.containsKey('privacyStatus')
              ? _json['privacyStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privacyStatus != null) 'privacyStatus': privacyStatus!,
      };
}

/// A pair Property / Value.
class PropertyValue {
  /// A property.
  core.String? property;

  /// The property's value.
  core.String? value;

  PropertyValue({
    this.property,
    this.value,
  });

  PropertyValue.fromJson(core.Map _json)
      : this(
          property: _json.containsKey('property')
              ? _json['property'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (property != null) 'property': property!,
        if (value != null) 'value': value!,
      };
}

class RelatedEntity {
  Entity? entity;

  RelatedEntity({
    this.entity,
  });

  RelatedEntity.fromJson(core.Map _json)
      : this(
          entity: _json.containsKey('entity')
              ? Entity.fromJson(
                  _json['entity'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
      };
}

/// A resource id is a generic reference that points to another YouTube
/// resource.
class ResourceId {
  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a channel.
  ///
  /// This property is only present if the resourceId.kind value is
  /// youtube#channel.
  core.String? channelId;

  /// The type of the API resource.
  core.String? kind;

  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a playlist.
  ///
  /// This property is only present if the resourceId.kind value is
  /// youtube#playlist.
  core.String? playlistId;

  /// The ID that YouTube uses to uniquely identify the referred resource, if
  /// that resource is a video.
  ///
  /// This property is only present if the resourceId.kind value is
  /// youtube#video.
  core.String? videoId;

  ResourceId({
    this.channelId,
    this.kind,
    this.playlistId,
    this.videoId,
  });

  ResourceId.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          playlistId: _json.containsKey('playlistId')
              ? _json['playlistId'] as core.String
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (kind != null) 'kind': kind!,
        if (playlistId != null) 'playlistId': playlistId!,
        if (videoId != null) 'videoId': videoId!,
      };
}

class SearchListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// Pagination information for token pagination.
  core.List<SearchResult>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#searchListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  core.String? regionCode;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  SearchListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.regionCode,
    this.tokenPagination,
    this.visitorId,
  });

  SearchListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// A search result contains information about a YouTube video, channel, or
/// playlist that matches the search parameters specified in an API request.
///
/// While a search result points to a uniquely identifiable resource, like a
/// video, it does not have its own persistent data.
class SearchResult {
  /// Etag of this resource.
  core.String? etag;

  /// The id object contains information that can be used to uniquely identify
  /// the resource that matches the search request.
  ResourceId? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#searchResult".
  core.String? kind;

  /// The snippet object contains basic details about a search result, such as
  /// its title or description.
  ///
  /// For example, if the search result is a video, then the title will be the
  /// video's title and the description will be the video's description.
  SearchResultSnippet? snippet;

  SearchResult({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  SearchResult.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id')
              ? ResourceId.fromJson(
                  _json['id'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? SearchResultSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// Basic details about a search result, including title, description and
/// thumbnails of the item referenced by the search result.
class SearchResultSnippet {
  /// The value that YouTube uses to uniquely identify the channel that
  /// published the resource that the search result identifies.
  core.String? channelId;

  /// The title of the channel that published the resource that the search
  /// result identifies.
  core.String? channelTitle;

  /// A description of the search result.
  core.String? description;

  /// It indicates if the resource (video or channel) has upcoming/active live
  /// broadcast content.
  ///
  /// Or it's "none" if there is not any upcoming/active live broadcasts.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  core.String? liveBroadcastContent;

  /// The creation date and time of the resource that the search result
  /// identifies.
  core.DateTime? publishedAt;

  /// A map of thumbnail images associated with the search result.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The title of the search result.
  core.String? title;

  SearchResultSnippet({
    this.channelId,
    this.channelTitle,
    this.description,
    this.liveBroadcastContent,
    this.publishedAt,
    this.thumbnails,
    this.title,
  });

  SearchResultSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          liveBroadcastContent: _json.containsKey('liveBroadcastContent')
              ? _json['liveBroadcastContent'] as core.String
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (description != null) 'description': description!,
        if (liveBroadcastContent != null)
          'liveBroadcastContent': liveBroadcastContent!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// A *subscription* resource contains information about a YouTube user
/// subscription.
///
/// A subscription notifies a user when new videos are added to a channel or
/// when another user takes one of several actions on YouTube, such as uploading
/// a video, rating a video, or commenting on a video.
class Subscription {
  /// The contentDetails object contains basic statistics about the
  /// subscription.
  SubscriptionContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the subscription.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#subscription".
  core.String? kind;

  /// The snippet object contains basic details about the subscription,
  /// including its title and the channel that the user subscribed to.
  SubscriptionSnippet? snippet;

  /// The subscriberSnippet object contains basic details about the subscriber.
  SubscriptionSubscriberSnippet? subscriberSnippet;

  Subscription({
    this.contentDetails,
    this.etag,
    this.id,
    this.kind,
    this.snippet,
    this.subscriberSnippet,
  });

  Subscription.fromJson(core.Map _json)
      : this(
          contentDetails: _json.containsKey('contentDetails')
              ? SubscriptionContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? SubscriptionSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          subscriberSnippet: _json.containsKey('subscriberSnippet')
              ? SubscriptionSubscriberSnippet.fromJson(
                  _json['subscriberSnippet']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
        if (subscriberSnippet != null) 'subscriberSnippet': subscriberSnippet!,
      };
}

/// Details about the content to witch a subscription refers.
class SubscriptionContentDetails {
  /// The type of activity this subscription is for (only uploads, everything).
  /// Possible string values are:
  /// - "subscriptionActivityTypeUnspecified"
  /// - "all"
  /// - "uploads"
  core.String? activityType;

  /// The number of new items in the subscription since its content was last
  /// read.
  core.int? newItemCount;

  /// The approximate number of items that the subscription points to.
  core.int? totalItemCount;

  SubscriptionContentDetails({
    this.activityType,
    this.newItemCount,
    this.totalItemCount,
  });

  SubscriptionContentDetails.fromJson(core.Map _json)
      : this(
          activityType: _json.containsKey('activityType')
              ? _json['activityType'] as core.String
              : null,
          newItemCount: _json.containsKey('newItemCount')
              ? _json['newItemCount'] as core.int
              : null,
          totalItemCount: _json.containsKey('totalItemCount')
              ? _json['totalItemCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activityType != null) 'activityType': activityType!,
        if (newItemCount != null) 'newItemCount': newItemCount!,
        if (totalItemCount != null) 'totalItemCount': totalItemCount!,
      };
}

class SubscriptionListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of subscriptions that match the request criteria.
  core.List<Subscription>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#subscriptionListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  SubscriptionListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  SubscriptionListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Subscription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a subscription, including title, description and
/// thumbnails of the subscribed item.
class SubscriptionSnippet {
  /// The ID that YouTube uses to uniquely identify the subscriber's channel.
  core.String? channelId;

  /// Channel title for the channel that the subscription belongs to.
  core.String? channelTitle;

  /// The subscription's details.
  core.String? description;

  /// The date and time that the subscription was created.
  core.DateTime? publishedAt;

  /// The id object contains information about the channel that the user
  /// subscribed to.
  ResourceId? resourceId;

  /// A map of thumbnail images associated with the video.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The subscription's title.
  core.String? title;

  SubscriptionSnippet({
    this.channelId,
    this.channelTitle,
    this.description,
    this.publishedAt,
    this.resourceId,
    this.thumbnails,
    this.title,
  });

  SubscriptionSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          resourceId: _json.containsKey('resourceId')
              ? ResourceId.fromJson(
                  _json['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (description != null) 'description': description!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (resourceId != null) 'resourceId': resourceId!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// Basic details about a subscription's subscriber including title,
/// description, channel ID and thumbnails.
class SubscriptionSubscriberSnippet {
  /// The channel ID of the subscriber.
  core.String? channelId;

  /// The description of the subscriber.
  core.String? description;

  /// Thumbnails for this subscriber.
  ThumbnailDetails? thumbnails;

  /// The title of the subscriber.
  core.String? title;

  SubscriptionSubscriberSnippet({
    this.channelId,
    this.description,
    this.thumbnails,
    this.title,
  });

  SubscriptionSubscriberSnippet.fromJson(core.Map _json)
      : this(
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (description != null) 'description': description!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// A `__superChatEvent__` resource represents a Super Chat purchase on a
/// YouTube channel.
class SuperChatEvent {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube assigns to uniquely identify the Super Chat event.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"youtube#superChatEvent"`.
  core.String? kind;

  /// The `snippet` object contains basic details about the Super Chat event.
  SuperChatEventSnippet? snippet;

  SuperChatEvent({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  SuperChatEvent.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? SuperChatEventSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class SuperChatEventListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of Super Chat purchases that match the request criteria.
  core.List<SuperChatEvent>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#superChatEventListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;
  PageInfo? pageInfo;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  SuperChatEventListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.tokenPagination,
    this.visitorId,
  });

  SuperChatEventListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SuperChatEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class SuperChatEventSnippet {
  /// The purchase amount, in micros of the purchase currency.
  ///
  /// e.g., 1 is represented as 1000000.
  core.String? amountMicros;

  /// Channel id where the event occurred.
  core.String? channelId;

  /// The text contents of the comment left by the user.
  core.String? commentText;

  /// The date and time when the event occurred.
  core.DateTime? createdAt;

  /// The currency in which the purchase was made.
  ///
  /// ISO 4217.
  core.String? currency;

  /// A rendered string that displays the purchase amount and currency (e.g.,
  /// "$1.00").
  ///
  /// The string is rendered for the given language.
  core.String? displayString;

  /// True if this event is a Super Sticker event.
  core.bool? isSuperStickerEvent;

  /// The tier for the paid message, which is based on the amount of money spent
  /// to purchase the message.
  core.int? messageType;

  /// If this event is a Super Sticker event, this field will contain metadata
  /// about the Super Sticker.
  SuperStickerMetadata? superStickerMetadata;

  /// Details about the supporter.
  ChannelProfileDetails? supporterDetails;

  SuperChatEventSnippet({
    this.amountMicros,
    this.channelId,
    this.commentText,
    this.createdAt,
    this.currency,
    this.displayString,
    this.isSuperStickerEvent,
    this.messageType,
    this.superStickerMetadata,
    this.supporterDetails,
  });

  SuperChatEventSnippet.fromJson(core.Map _json)
      : this(
          amountMicros: _json.containsKey('amountMicros')
              ? _json['amountMicros'] as core.String
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          commentText: _json.containsKey('commentText')
              ? _json['commentText'] as core.String
              : null,
          createdAt: _json.containsKey('createdAt')
              ? core.DateTime.parse(_json['createdAt'] as core.String)
              : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          displayString: _json.containsKey('displayString')
              ? _json['displayString'] as core.String
              : null,
          isSuperStickerEvent: _json.containsKey('isSuperStickerEvent')
              ? _json['isSuperStickerEvent'] as core.bool
              : null,
          messageType: _json.containsKey('messageType')
              ? _json['messageType'] as core.int
              : null,
          superStickerMetadata: _json.containsKey('superStickerMetadata')
              ? SuperStickerMetadata.fromJson(_json['superStickerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          supporterDetails: _json.containsKey('supporterDetails')
              ? ChannelProfileDetails.fromJson(_json['supporterDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amountMicros != null) 'amountMicros': amountMicros!,
        if (channelId != null) 'channelId': channelId!,
        if (commentText != null) 'commentText': commentText!,
        if (createdAt != null) 'createdAt': createdAt!.toIso8601String(),
        if (currency != null) 'currency': currency!,
        if (displayString != null) 'displayString': displayString!,
        if (isSuperStickerEvent != null)
          'isSuperStickerEvent': isSuperStickerEvent!,
        if (messageType != null) 'messageType': messageType!,
        if (superStickerMetadata != null)
          'superStickerMetadata': superStickerMetadata!,
        if (supporterDetails != null) 'supporterDetails': supporterDetails!,
      };
}

class SuperStickerMetadata {
  /// Internationalized alt text that describes the sticker image and any
  /// animation associated with it.
  core.String? altText;

  /// Specifies the localization language in which the alt text is returned.
  core.String? altTextLanguage;

  /// Unique identifier of the Super Sticker.
  ///
  /// This is a shorter form of the alt_text that includes pack name and a
  /// recognizable characteristic of the sticker.
  core.String? stickerId;

  SuperStickerMetadata({
    this.altText,
    this.altTextLanguage,
    this.stickerId,
  });

  SuperStickerMetadata.fromJson(core.Map _json)
      : this(
          altText: _json.containsKey('altText')
              ? _json['altText'] as core.String
              : null,
          altTextLanguage: _json.containsKey('altTextLanguage')
              ? _json['altTextLanguage'] as core.String
              : null,
          stickerId: _json.containsKey('stickerId')
              ? _json['stickerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (altTextLanguage != null) 'altTextLanguage': altTextLanguage!,
        if (stickerId != null) 'stickerId': stickerId!,
      };
}

class TestItem {
  core.bool? featuredPart;
  core.String? gaia;
  core.String? id;
  TestItemTestItemSnippet? snippet;

  TestItem({
    this.featuredPart,
    this.gaia,
    this.id,
    this.snippet,
  });

  TestItem.fromJson(core.Map _json)
      : this(
          featuredPart: _json.containsKey('featuredPart')
              ? _json['featuredPart'] as core.bool
              : null,
          gaia: _json.containsKey('gaia') ? _json['gaia'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? TestItemTestItemSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (featuredPart != null) 'featuredPart': featuredPart!,
        if (gaia != null) 'gaia': gaia!,
        if (id != null) 'id': id!,
        if (snippet != null) 'snippet': snippet!,
      };
}

typedef TestItemTestItemSnippet = $Empty;

/// A *third party account link* resource represents a link between a YouTube
/// account or a channel and an account on a third-party service.
class ThirdPartyLink {
  /// Etag of this resource
  core.String? etag;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#thirdPartyLink".
  core.String? kind;

  /// The linking_token identifies a YouTube account and channel with which the
  /// third party account is linked.
  core.String? linkingToken;

  /// The snippet object contains basic details about the third- party account
  /// link.
  ThirdPartyLinkSnippet? snippet;

  /// The status object contains information about the status of the link.
  ThirdPartyLinkStatus? status;

  ThirdPartyLink({
    this.etag,
    this.kind,
    this.linkingToken,
    this.snippet,
    this.status,
  });

  ThirdPartyLink.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          linkingToken: _json.containsKey('linkingToken')
              ? _json['linkingToken'] as core.String
              : null,
          snippet: _json.containsKey('snippet')
              ? ThirdPartyLinkSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? ThirdPartyLinkStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (linkingToken != null) 'linkingToken': linkingToken!,
        if (snippet != null) 'snippet': snippet!,
        if (status != null) 'status': status!,
      };
}

/// Basic information about a third party account link, including its type and
/// type-specific information.
class ThirdPartyLinkSnippet {
  /// Information specific to a link between a channel and a store on a
  /// merchandising platform.
  ChannelToStoreLinkDetails? channelToStoreLink;

  /// Type of the link named after the entities that are being linked.
  /// Possible string values are:
  /// - "linkUnspecified"
  /// - "channelToStoreLink" : A link that is connecting (or about to connect) a
  /// channel with a store on a merchandising platform in order to enable retail
  /// commerce capabilities for that channel on YouTube.
  core.String? type;

  ThirdPartyLinkSnippet({
    this.channelToStoreLink,
    this.type,
  });

  ThirdPartyLinkSnippet.fromJson(core.Map _json)
      : this(
          channelToStoreLink: _json.containsKey('channelToStoreLink')
              ? ChannelToStoreLinkDetails.fromJson(_json['channelToStoreLink']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelToStoreLink != null)
          'channelToStoreLink': channelToStoreLink!,
        if (type != null) 'type': type!,
      };
}

/// The third-party link status object contains information about the status of
/// the link.
class ThirdPartyLinkStatus {
  ///
  /// Possible string values are:
  /// - "unknown"
  /// - "failed"
  /// - "pending"
  /// - "linked"
  core.String? linkStatus;

  ThirdPartyLinkStatus({
    this.linkStatus,
  });

  ThirdPartyLinkStatus.fromJson(core.Map _json)
      : this(
          linkStatus: _json.containsKey('linkStatus')
              ? _json['linkStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkStatus != null) 'linkStatus': linkStatus!,
      };
}

/// A thumbnail is an image representing a YouTube resource.
class Thumbnail {
  /// (Optional) Height of the thumbnail image.
  core.int? height;

  /// The thumbnail image's URL.
  core.String? url;

  /// (Optional) Width of the thumbnail image.
  core.int? width;

  Thumbnail({
    this.height,
    this.url,
    this.width,
  });

  Thumbnail.fromJson(core.Map _json)
      : this(
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (url != null) 'url': url!,
        if (width != null) 'width': width!,
      };
}

/// Internal representation of thumbnails for a YouTube resource.
class ThumbnailDetails {
  /// The default image for this resource.
  Thumbnail? default_;

  /// The high quality image for this resource.
  Thumbnail? high;

  /// The maximum resolution quality image for this resource.
  Thumbnail? maxres;

  /// The medium quality image for this resource.
  Thumbnail? medium;

  /// The standard quality image for this resource.
  Thumbnail? standard;

  ThumbnailDetails({
    this.default_,
    this.high,
    this.maxres,
    this.medium,
    this.standard,
  });

  ThumbnailDetails.fromJson(core.Map _json)
      : this(
          default_: _json.containsKey('default')
              ? Thumbnail.fromJson(
                  _json['default'] as core.Map<core.String, core.dynamic>)
              : null,
          high: _json.containsKey('high')
              ? Thumbnail.fromJson(
                  _json['high'] as core.Map<core.String, core.dynamic>)
              : null,
          maxres: _json.containsKey('maxres')
              ? Thumbnail.fromJson(
                  _json['maxres'] as core.Map<core.String, core.dynamic>)
              : null,
          medium: _json.containsKey('medium')
              ? Thumbnail.fromJson(
                  _json['medium'] as core.Map<core.String, core.dynamic>)
              : null,
          standard: _json.containsKey('standard')
              ? Thumbnail.fromJson(
                  _json['standard'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (high != null) 'high': high!,
        if (maxres != null) 'maxres': maxres!,
        if (medium != null) 'medium': medium!,
        if (standard != null) 'standard': standard!,
      };
}

class ThumbnailSetResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of thumbnails.
  core.List<ThumbnailDetails>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#thumbnailSetResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  ThumbnailSetResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  ThumbnailSetResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => ThumbnailDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Stub token pagination template to suppress results.
typedef TokenPagination = $Empty;

/// A *video* resource represents a YouTube video.
class Video {
  /// Age restriction details related to a video.
  ///
  /// This data can only be retrieved by the video owner.
  VideoAgeGating? ageGating;

  /// The contentDetails object contains information about the video content,
  /// including the length of the video and its aspect ratio.
  VideoContentDetails? contentDetails;

  /// Etag of this resource.
  core.String? etag;

  /// The fileDetails object encapsulates information about the video file that
  /// was uploaded to YouTube, including the file's resolution, duration, audio
  /// and video codecs, stream bitrates, and more.
  ///
  /// This data can only be retrieved by the video owner.
  VideoFileDetails? fileDetails;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#video".
  core.String? kind;

  /// The liveStreamingDetails object contains metadata about a live video
  /// broadcast.
  ///
  /// The object will only be present in a video resource if the video is an
  /// upcoming, live, or completed live broadcast.
  VideoLiveStreamingDetails? liveStreamingDetails;

  /// The localizations object contains localized versions of the basic details
  /// about the video, such as its title and description.
  core.Map<core.String, VideoLocalization>? localizations;

  /// The monetizationDetails object encapsulates information about the
  /// monetization status of the video.
  VideoMonetizationDetails? monetizationDetails;

  /// The player object contains information that you would use to play the
  /// video in an embedded player.
  VideoPlayer? player;

  /// The processingDetails object encapsulates information about YouTube's
  /// progress in processing the uploaded video file.
  ///
  /// The properties in the object identify the current processing status and an
  /// estimate of the time remaining until YouTube finishes processing the
  /// video. This part also indicates whether different types of data or
  /// content, such as file details or thumbnail images, are available for the
  /// video. The processingProgress object is designed to be polled so that the
  /// video uploaded can track the progress that YouTube has made in processing
  /// the uploaded video file. This data can only be retrieved by the video
  /// owner.
  VideoProcessingDetails? processingDetails;

  /// The projectDetails object contains information about the project specific
  /// video metadata.
  ///
  /// b/157517979: This part was never populated after it was added. However, it
  /// sees non-zero traffic because there is generated client code in the wild
  /// that refers to it \[1\]. We keep this field and do NOT remove it because
  /// otherwise V3 would return an error when this part gets requested \[2\].
  /// \[1\]
  /// https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html
  /// \[2\]
  /// http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677
  VideoProjectDetails? projectDetails;

  /// The recordingDetails object encapsulates information about the location,
  /// date and address where the video was recorded.
  VideoRecordingDetails? recordingDetails;

  /// The snippet object contains basic details about the video, such as its
  /// title, description, and category.
  VideoSnippet? snippet;

  /// The statistics object contains statistics about the video.
  VideoStatistics? statistics;

  /// The status object contains information about the video's uploading,
  /// processing, and privacy statuses.
  VideoStatus? status;

  /// The suggestions object encapsulates suggestions that identify
  /// opportunities to improve the video quality or the metadata for the
  /// uploaded video.
  ///
  /// This data can only be retrieved by the video owner.
  VideoSuggestions? suggestions;

  /// The topicDetails object encapsulates information about Freebase topics
  /// associated with the video.
  VideoTopicDetails? topicDetails;

  Video({
    this.ageGating,
    this.contentDetails,
    this.etag,
    this.fileDetails,
    this.id,
    this.kind,
    this.liveStreamingDetails,
    this.localizations,
    this.monetizationDetails,
    this.player,
    this.processingDetails,
    this.projectDetails,
    this.recordingDetails,
    this.snippet,
    this.statistics,
    this.status,
    this.suggestions,
    this.topicDetails,
  });

  Video.fromJson(core.Map _json)
      : this(
          ageGating: _json.containsKey('ageGating')
              ? VideoAgeGating.fromJson(
                  _json['ageGating'] as core.Map<core.String, core.dynamic>)
              : null,
          contentDetails: _json.containsKey('contentDetails')
              ? VideoContentDetails.fromJson(_json['contentDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          fileDetails: _json.containsKey('fileDetails')
              ? VideoFileDetails.fromJson(
                  _json['fileDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          liveStreamingDetails: _json.containsKey('liveStreamingDetails')
              ? VideoLiveStreamingDetails.fromJson(_json['liveStreamingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizations: _json.containsKey('localizations')
              ? (_json['localizations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    VideoLocalization.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          monetizationDetails: _json.containsKey('monetizationDetails')
              ? VideoMonetizationDetails.fromJson(_json['monetizationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          player: _json.containsKey('player')
              ? VideoPlayer.fromJson(
                  _json['player'] as core.Map<core.String, core.dynamic>)
              : null,
          processingDetails: _json.containsKey('processingDetails')
              ? VideoProcessingDetails.fromJson(_json['processingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          projectDetails: _json.containsKey('projectDetails')
              ? VideoProjectDetails.fromJson(_json['projectDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          recordingDetails: _json.containsKey('recordingDetails')
              ? VideoRecordingDetails.fromJson(_json['recordingDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          snippet: _json.containsKey('snippet')
              ? VideoSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          statistics: _json.containsKey('statistics')
              ? VideoStatistics.fromJson(
                  _json['statistics'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? VideoStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          suggestions: _json.containsKey('suggestions')
              ? VideoSuggestions.fromJson(
                  _json['suggestions'] as core.Map<core.String, core.dynamic>)
              : null,
          topicDetails: _json.containsKey('topicDetails')
              ? VideoTopicDetails.fromJson(
                  _json['topicDetails'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageGating != null) 'ageGating': ageGating!,
        if (contentDetails != null) 'contentDetails': contentDetails!,
        if (etag != null) 'etag': etag!,
        if (fileDetails != null) 'fileDetails': fileDetails!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (liveStreamingDetails != null)
          'liveStreamingDetails': liveStreamingDetails!,
        if (localizations != null) 'localizations': localizations!,
        if (monetizationDetails != null)
          'monetizationDetails': monetizationDetails!,
        if (player != null) 'player': player!,
        if (processingDetails != null) 'processingDetails': processingDetails!,
        if (projectDetails != null) 'projectDetails': projectDetails!,
        if (recordingDetails != null) 'recordingDetails': recordingDetails!,
        if (snippet != null) 'snippet': snippet!,
        if (statistics != null) 'statistics': statistics!,
        if (status != null) 'status': status!,
        if (suggestions != null) 'suggestions': suggestions!,
        if (topicDetails != null) 'topicDetails': topicDetails!,
      };
}

class VideoAbuseReport {
  /// Additional comments regarding the abuse report.
  core.String? comments;

  /// The language that the content was viewed in.
  core.String? language;

  /// The high-level, or primary, reason that the content is abusive.
  ///
  /// The value is an abuse report reason ID.
  core.String? reasonId;

  /// The specific, or secondary, reason that this content is abusive (if
  /// available).
  ///
  /// The value is an abuse report reason ID that is a valid secondary reason
  /// for the primary reason.
  core.String? secondaryReasonId;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String? videoId;

  VideoAbuseReport({
    this.comments,
    this.language,
    this.reasonId,
    this.secondaryReasonId,
    this.videoId,
  });

  VideoAbuseReport.fromJson(core.Map _json)
      : this(
          comments: _json.containsKey('comments')
              ? _json['comments'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          reasonId: _json.containsKey('reasonId')
              ? _json['reasonId'] as core.String
              : null,
          secondaryReasonId: _json.containsKey('secondaryReasonId')
              ? _json['secondaryReasonId'] as core.String
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
        if (language != null) 'language': language!,
        if (reasonId != null) 'reasonId': reasonId!,
        if (secondaryReasonId != null) 'secondaryReasonId': secondaryReasonId!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// A `__videoAbuseReportReason__` resource identifies a reason that a video
/// could be reported as abusive.
///
/// Video abuse report reasons are used with `video.ReportAbuse`.
class VideoAbuseReportReason {
  /// Etag of this resource.
  core.String? etag;

  /// The ID of this abuse report reason.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"youtube#videoAbuseReportReason"`.
  core.String? kind;

  /// The `snippet` object contains basic details about the abuse report reason.
  VideoAbuseReportReasonSnippet? snippet;

  VideoAbuseReportReason({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  VideoAbuseReportReason.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? VideoAbuseReportReasonSnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class VideoAbuseReportReasonListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of valid abuse reasons that are used with `video.ReportAbuse`.
  core.List<VideoAbuseReportReason>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"youtube#videoAbuseReportReasonListResponse"`.
  core.String? kind;

  /// The `visitorId` identifies the visitor.
  core.String? visitorId;

  VideoAbuseReportReasonListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  VideoAbuseReportReasonListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => VideoAbuseReportReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a video category, such as its localized title.
class VideoAbuseReportReasonSnippet {
  /// The localized label belonging to this abuse report reason.
  core.String? label;

  /// The secondary reasons associated with this reason, if any are available.
  ///
  /// (There might be 0 or more.)
  core.List<VideoAbuseReportSecondaryReason>? secondaryReasons;

  VideoAbuseReportReasonSnippet({
    this.label,
    this.secondaryReasons,
  });

  VideoAbuseReportReasonSnippet.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          secondaryReasons: _json.containsKey('secondaryReasons')
              ? (_json['secondaryReasons'] as core.List)
                  .map((value) => VideoAbuseReportSecondaryReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (secondaryReasons != null) 'secondaryReasons': secondaryReasons!,
      };
}

class VideoAbuseReportSecondaryReason {
  /// The ID of this abuse report secondary reason.
  core.String? id;

  /// The localized label for this abuse report secondary reason.
  core.String? label;

  VideoAbuseReportSecondaryReason({
    this.id,
    this.label,
  });

  VideoAbuseReportSecondaryReason.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (label != null) 'label': label!,
      };
}

class VideoAgeGating {
  /// Indicates whether or not the video has alcoholic beverage content.
  ///
  /// Only users of legal purchasing age in a particular country, as identified
  /// by ICAP, can view the content.
  core.bool? alcoholContent;

  /// Age-restricted trailers.
  ///
  /// For redband trailers and adult-rated video-games. Only users aged 18+ can
  /// view the content. The the field is true the content is restricted to
  /// viewers aged 18+. Otherwise The field won't be present.
  core.bool? restricted;

  /// Video game rating, if any.
  /// Possible string values are:
  /// - "anyone"
  /// - "m15Plus"
  /// - "m16Plus"
  /// - "m17Plus"
  core.String? videoGameRating;

  VideoAgeGating({
    this.alcoholContent,
    this.restricted,
    this.videoGameRating,
  });

  VideoAgeGating.fromJson(core.Map _json)
      : this(
          alcoholContent: _json.containsKey('alcoholContent')
              ? _json['alcoholContent'] as core.bool
              : null,
          restricted: _json.containsKey('restricted')
              ? _json['restricted'] as core.bool
              : null,
          videoGameRating: _json.containsKey('videoGameRating')
              ? _json['videoGameRating'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alcoholContent != null) 'alcoholContent': alcoholContent!,
        if (restricted != null) 'restricted': restricted!,
        if (videoGameRating != null) 'videoGameRating': videoGameRating!,
      };
}

/// A *videoCategory* resource identifies a category that has been or could be
/// associated with uploaded videos.
class VideoCategory {
  /// Etag of this resource.
  core.String? etag;

  /// The ID that YouTube uses to uniquely identify the video category.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#videoCategory".
  core.String? kind;

  /// The snippet object contains basic details about the video category,
  /// including its title.
  VideoCategorySnippet? snippet;

  VideoCategory({
    this.etag,
    this.id,
    this.kind,
    this.snippet,
  });

  VideoCategory.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? VideoCategorySnippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class VideoCategoryListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of video categories that can be associated with YouTube videos.
  ///
  /// In this map, the video category ID is the map key, and its value is the
  /// corresponding videoCategory resource.
  core.List<VideoCategory>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#videoCategoryListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  VideoCategoryListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  VideoCategoryListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => VideoCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Basic details about a video category, such as its localized title.
class VideoCategorySnippet {
  core.bool? assignable;

  /// The YouTube channel that created the video category.
  core.String? channelId;

  /// The video category's title.
  core.String? title;

  VideoCategorySnippet({
    this.assignable,
    this.channelId,
    this.title,
  });

  VideoCategorySnippet.fromJson(core.Map _json)
      : this(
          assignable: _json.containsKey('assignable')
              ? _json['assignable'] as core.bool
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignable != null) 'assignable': assignable!,
        if (channelId != null) 'channelId': channelId!,
        if (title != null) 'title': title!,
      };
}

/// Details about the content of a YouTube Video.
class VideoContentDetails {
  /// The value of captions indicates whether the video has captions or not.
  /// Possible string values are:
  /// - "true"
  /// - "false"
  core.String? caption;

  /// Specifies the ratings that the video received under various rating
  /// schemes.
  ContentRating? contentRating;

  /// The countryRestriction object contains information about the countries
  /// where a video is (or is not) viewable.
  AccessPolicy? countryRestriction;

  /// The value of definition indicates whether the video is available in high
  /// definition or only in standard definition.
  /// Possible string values are:
  /// - "sd" : sd
  /// - "hd" : hd
  core.String? definition;

  /// The value of dimension indicates whether the video is available in 3D or
  /// in 2D.
  core.String? dimension;

  /// The length of the video.
  ///
  /// The tag value is an ISO 8601 duration in the format PT#M#S, in which the
  /// letters PT indicate that the value specifies a period of time, and the
  /// letters M and S refer to length in minutes and seconds, respectively. The
  /// # characters preceding the M and S letters are both integers that specify
  /// the number of minutes (or seconds) of the video. For example, a value of
  /// PT15M51S indicates that the video is 15 minutes and 51 seconds long.
  core.String? duration;

  /// Indicates whether the video uploader has provided a custom thumbnail image
  /// for the video.
  ///
  /// This property is only visible to the video uploader.
  core.bool? hasCustomThumbnail;

  /// The value of is_license_content indicates whether the video is licensed
  /// content.
  core.bool? licensedContent;

  /// Specifies the projection format of the video.
  /// Possible string values are:
  /// - "rectangular"
  /// - "360"
  core.String? projection;

  /// The regionRestriction object contains information about the countries
  /// where a video is (or is not) viewable.
  ///
  /// The object will contain either the
  /// contentDetails.regionRestriction.allowed property or the
  /// contentDetails.regionRestriction.blocked property.
  VideoContentDetailsRegionRestriction? regionRestriction;

  VideoContentDetails({
    this.caption,
    this.contentRating,
    this.countryRestriction,
    this.definition,
    this.dimension,
    this.duration,
    this.hasCustomThumbnail,
    this.licensedContent,
    this.projection,
    this.regionRestriction,
  });

  VideoContentDetails.fromJson(core.Map _json)
      : this(
          caption: _json.containsKey('caption')
              ? _json['caption'] as core.String
              : null,
          contentRating: _json.containsKey('contentRating')
              ? ContentRating.fromJson(
                  _json['contentRating'] as core.Map<core.String, core.dynamic>)
              : null,
          countryRestriction: _json.containsKey('countryRestriction')
              ? AccessPolicy.fromJson(_json['countryRestriction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          definition: _json.containsKey('definition')
              ? _json['definition'] as core.String
              : null,
          dimension: _json.containsKey('dimension')
              ? _json['dimension'] as core.String
              : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          hasCustomThumbnail: _json.containsKey('hasCustomThumbnail')
              ? _json['hasCustomThumbnail'] as core.bool
              : null,
          licensedContent: _json.containsKey('licensedContent')
              ? _json['licensedContent'] as core.bool
              : null,
          projection: _json.containsKey('projection')
              ? _json['projection'] as core.String
              : null,
          regionRestriction: _json.containsKey('regionRestriction')
              ? VideoContentDetailsRegionRestriction.fromJson(
                  _json['regionRestriction']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caption != null) 'caption': caption!,
        if (contentRating != null) 'contentRating': contentRating!,
        if (countryRestriction != null)
          'countryRestriction': countryRestriction!,
        if (definition != null) 'definition': definition!,
        if (dimension != null) 'dimension': dimension!,
        if (duration != null) 'duration': duration!,
        if (hasCustomThumbnail != null)
          'hasCustomThumbnail': hasCustomThumbnail!,
        if (licensedContent != null) 'licensedContent': licensedContent!,
        if (projection != null) 'projection': projection!,
        if (regionRestriction != null) 'regionRestriction': regionRestriction!,
      };
}

/// DEPRECATED Region restriction of the video.
class VideoContentDetailsRegionRestriction {
  /// A list of region codes that identify countries where the video is
  /// viewable.
  ///
  /// If this property is present and a country is not listed in its value, then
  /// the video is blocked from appearing in that country. If this property is
  /// present and contains an empty list, the video is blocked in all countries.
  core.List<core.String>? allowed;

  /// A list of region codes that identify countries where the video is blocked.
  ///
  /// If this property is present and a country is not listed in its value, then
  /// the video is viewable in that country. If this property is present and
  /// contains an empty list, the video is viewable in all countries.
  core.List<core.String>? blocked;

  VideoContentDetailsRegionRestriction({
    this.allowed,
    this.blocked,
  });

  VideoContentDetailsRegionRestriction.fromJson(core.Map _json)
      : this(
          allowed: _json.containsKey('allowed')
              ? (_json['allowed'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          blocked: _json.containsKey('blocked')
              ? (_json['blocked'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowed != null) 'allowed': allowed!,
        if (blocked != null) 'blocked': blocked!,
      };
}

/// Describes original video file properties, including technical details about
/// audio and video streams, but also metadata information like content length,
/// digitization time, or geotagging information.
class VideoFileDetails {
  /// A list of audio streams contained in the uploaded video file.
  ///
  /// Each item in the list contains detailed metadata about an audio stream.
  core.List<VideoFileDetailsAudioStream>? audioStreams;

  /// The uploaded video file's combined (video and audio) bitrate in bits per
  /// second.
  core.String? bitrateBps;

  /// The uploaded video file's container format.
  core.String? container;

  /// The date and time when the uploaded video file was created.
  ///
  /// The value is specified in ISO 8601 format. Currently, the following ISO
  /// 8601 formats are supported: - Date only: YYYY-MM-DD - Naive time:
  /// YYYY-MM-DDTHH:MM:SS - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
  core.String? creationTime;

  /// The length of the uploaded video in milliseconds.
  core.String? durationMs;

  /// The uploaded file's name.
  ///
  /// This field is present whether a video file or another type of file was
  /// uploaded.
  core.String? fileName;

  /// The uploaded file's size in bytes.
  ///
  /// This field is present whether a video file or another type of file was
  /// uploaded.
  core.String? fileSize;

  /// The uploaded file's type as detected by YouTube's video processing engine.
  ///
  /// Currently, YouTube only processes video files, but this field is present
  /// whether a video file or another type of file was uploaded.
  /// Possible string values are:
  /// - "video" : Known video file (e.g., an MP4 file).
  /// - "audio" : Audio only file (e.g., an MP3 file).
  /// - "image" : Image file (e.g., a JPEG image).
  /// - "archive" : Archive file (e.g., a ZIP archive).
  /// - "document" : Document or text file (e.g., MS Word document).
  /// - "project" : Movie project file (e.g., Microsoft Windows Movie Maker
  /// project).
  /// - "other" : Other non-video file type.
  core.String? fileType;

  /// A list of video streams contained in the uploaded video file.
  ///
  /// Each item in the list contains detailed metadata about a video stream.
  core.List<VideoFileDetailsVideoStream>? videoStreams;

  VideoFileDetails({
    this.audioStreams,
    this.bitrateBps,
    this.container,
    this.creationTime,
    this.durationMs,
    this.fileName,
    this.fileSize,
    this.fileType,
    this.videoStreams,
  });

  VideoFileDetails.fromJson(core.Map _json)
      : this(
          audioStreams: _json.containsKey('audioStreams')
              ? (_json['audioStreams'] as core.List)
                  .map((value) => VideoFileDetailsAudioStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bitrateBps: _json.containsKey('bitrateBps')
              ? _json['bitrateBps'] as core.String
              : null,
          container: _json.containsKey('container')
              ? _json['container'] as core.String
              : null,
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          durationMs: _json.containsKey('durationMs')
              ? _json['durationMs'] as core.String
              : null,
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
          fileSize: _json.containsKey('fileSize')
              ? _json['fileSize'] as core.String
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          videoStreams: _json.containsKey('videoStreams')
              ? (_json['videoStreams'] as core.List)
                  .map((value) => VideoFileDetailsVideoStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioStreams != null) 'audioStreams': audioStreams!,
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (container != null) 'container': container!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (durationMs != null) 'durationMs': durationMs!,
        if (fileName != null) 'fileName': fileName!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (fileType != null) 'fileType': fileType!,
        if (videoStreams != null) 'videoStreams': videoStreams!,
      };
}

/// Information about an audio stream.
class VideoFileDetailsAudioStream {
  /// The audio stream's bitrate, in bits per second.
  core.String? bitrateBps;

  /// The number of audio channels that the stream contains.
  core.int? channelCount;

  /// The audio codec that the stream uses.
  core.String? codec;

  /// A value that uniquely identifies a video vendor.
  ///
  /// Typically, the value is a four-letter vendor code.
  core.String? vendor;

  VideoFileDetailsAudioStream({
    this.bitrateBps,
    this.channelCount,
    this.codec,
    this.vendor,
  });

  VideoFileDetailsAudioStream.fromJson(core.Map _json)
      : this(
          bitrateBps: _json.containsKey('bitrateBps')
              ? _json['bitrateBps'] as core.String
              : null,
          channelCount: _json.containsKey('channelCount')
              ? _json['channelCount'] as core.int
              : null,
          codec:
              _json.containsKey('codec') ? _json['codec'] as core.String : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (channelCount != null) 'channelCount': channelCount!,
        if (codec != null) 'codec': codec!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Information about a video stream.
class VideoFileDetailsVideoStream {
  /// The video content's display aspect ratio, which specifies the aspect ratio
  /// in which the video should be displayed.
  core.double? aspectRatio;

  /// The video stream's bitrate, in bits per second.
  core.String? bitrateBps;

  /// The video codec that the stream uses.
  core.String? codec;

  /// The video stream's frame rate, in frames per second.
  core.double? frameRateFps;

  /// The encoded video content's height in pixels.
  core.int? heightPixels;

  /// The amount that YouTube needs to rotate the original source content to
  /// properly display the video.
  /// Possible string values are:
  /// - "none"
  /// - "clockwise"
  /// - "upsideDown"
  /// - "counterClockwise"
  /// - "other"
  core.String? rotation;

  /// A value that uniquely identifies a video vendor.
  ///
  /// Typically, the value is a four-letter vendor code.
  core.String? vendor;

  /// The encoded video content's width in pixels.
  ///
  /// You can calculate the video's encoding aspect ratio as width_pixels /
  /// height_pixels.
  core.int? widthPixels;

  VideoFileDetailsVideoStream({
    this.aspectRatio,
    this.bitrateBps,
    this.codec,
    this.frameRateFps,
    this.heightPixels,
    this.rotation,
    this.vendor,
    this.widthPixels,
  });

  VideoFileDetailsVideoStream.fromJson(core.Map _json)
      : this(
          aspectRatio: _json.containsKey('aspectRatio')
              ? (_json['aspectRatio'] as core.num).toDouble()
              : null,
          bitrateBps: _json.containsKey('bitrateBps')
              ? _json['bitrateBps'] as core.String
              : null,
          codec:
              _json.containsKey('codec') ? _json['codec'] as core.String : null,
          frameRateFps: _json.containsKey('frameRateFps')
              ? (_json['frameRateFps'] as core.num).toDouble()
              : null,
          heightPixels: _json.containsKey('heightPixels')
              ? _json['heightPixels'] as core.int
              : null,
          rotation: _json.containsKey('rotation')
              ? _json['rotation'] as core.String
              : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
              : null,
          widthPixels: _json.containsKey('widthPixels')
              ? _json['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspectRatio != null) 'aspectRatio': aspectRatio!,
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (codec != null) 'codec': codec!,
        if (frameRateFps != null) 'frameRateFps': frameRateFps!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (rotation != null) 'rotation': rotation!,
        if (vendor != null) 'vendor': vendor!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}

class VideoGetRatingResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;

  /// A list of ratings that match the request criteria.
  core.List<VideoRating>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#videoGetRatingResponse".
  core.String? kind;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  VideoGetRatingResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.visitorId,
  });

  VideoGetRatingResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => VideoRating.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

class VideoListResponse {
  /// Etag of this resource.
  core.String? etag;

  /// Serialized EventId of the request which produced this response.
  core.String? eventId;
  core.List<Video>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "youtube#videoListResponse".
  core.String? kind;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the next page in the result set.
  core.String? nextPageToken;

  /// General pagination information.
  PageInfo? pageInfo;

  /// The token that can be used as the value of the pageToken parameter to
  /// retrieve the previous page in the result set.
  core.String? prevPageToken;
  TokenPagination? tokenPagination;

  /// The visitorId identifies the visitor.
  core.String? visitorId;

  VideoListResponse({
    this.etag,
    this.eventId,
    this.items,
    this.kind,
    this.nextPageToken,
    this.pageInfo,
    this.prevPageToken,
    this.tokenPagination,
    this.visitorId,
  });

  VideoListResponse.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Video.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: _json.containsKey('prevPageToken')
              ? _json['prevPageToken'] as core.String
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (eventId != null) 'eventId': eventId!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Details about the live streaming metadata.
class VideoLiveStreamingDetails {
  /// The ID of the currently active live chat attached to this video.
  ///
  /// This field is filled only if the video is a currently live broadcast that
  /// has live chat. Once the broadcast transitions to complete this field will
  /// be removed and the live chat closed down. For persistent broadcasts that
  /// live chat id will no longer be tied to this video but rather to the new
  /// video being displayed at the persistent page.
  core.String? activeLiveChatId;

  /// The time that the broadcast actually ended.
  ///
  /// This value will not be available until the broadcast is over.
  core.DateTime? actualEndTime;

  /// The time that the broadcast actually started.
  ///
  /// This value will not be available until the broadcast begins.
  core.DateTime? actualStartTime;

  /// The number of viewers currently watching the broadcast.
  ///
  /// The property and its value will be present if the broadcast has current
  /// viewers and the broadcast owner has not hidden the viewcount for the
  /// video. Note that YouTube stops tracking the number of concurrent viewers
  /// for a broadcast when the broadcast ends. So, this property would not
  /// identify the number of viewers watching an archived video of a live
  /// broadcast that already ended.
  core.String? concurrentViewers;

  /// The time that the broadcast is scheduled to end.
  ///
  /// If the value is empty or the property is not present, then the broadcast
  /// is scheduled to contiue indefinitely.
  core.DateTime? scheduledEndTime;

  /// The time that the broadcast is scheduled to begin.
  core.DateTime? scheduledStartTime;

  VideoLiveStreamingDetails({
    this.activeLiveChatId,
    this.actualEndTime,
    this.actualStartTime,
    this.concurrentViewers,
    this.scheduledEndTime,
    this.scheduledStartTime,
  });

  VideoLiveStreamingDetails.fromJson(core.Map _json)
      : this(
          activeLiveChatId: _json.containsKey('activeLiveChatId')
              ? _json['activeLiveChatId'] as core.String
              : null,
          actualEndTime: _json.containsKey('actualEndTime')
              ? core.DateTime.parse(_json['actualEndTime'] as core.String)
              : null,
          actualStartTime: _json.containsKey('actualStartTime')
              ? core.DateTime.parse(_json['actualStartTime'] as core.String)
              : null,
          concurrentViewers: _json.containsKey('concurrentViewers')
              ? _json['concurrentViewers'] as core.String
              : null,
          scheduledEndTime: _json.containsKey('scheduledEndTime')
              ? core.DateTime.parse(_json['scheduledEndTime'] as core.String)
              : null,
          scheduledStartTime: _json.containsKey('scheduledStartTime')
              ? core.DateTime.parse(_json['scheduledStartTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeLiveChatId != null) 'activeLiveChatId': activeLiveChatId!,
        if (actualEndTime != null)
          'actualEndTime': actualEndTime!.toIso8601String(),
        if (actualStartTime != null)
          'actualStartTime': actualStartTime!.toIso8601String(),
        if (concurrentViewers != null) 'concurrentViewers': concurrentViewers!,
        if (scheduledEndTime != null)
          'scheduledEndTime': scheduledEndTime!.toIso8601String(),
        if (scheduledStartTime != null)
          'scheduledStartTime': scheduledStartTime!.toIso8601String(),
      };
}

/// Localized versions of certain video properties (e.g. title).
class VideoLocalization {
  /// Localized version of the video's description.
  core.String? description;

  /// Localized version of the video's title.
  core.String? title;

  VideoLocalization({
    this.description,
    this.title,
  });

  VideoLocalization.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

/// Details about monetization of a YouTube Video.
class VideoMonetizationDetails {
  /// The value of access indicates whether the video can be monetized or not.
  AccessPolicy? access;

  VideoMonetizationDetails({
    this.access,
  });

  VideoMonetizationDetails.fromJson(core.Map _json)
      : this(
          access: _json.containsKey('access')
              ? AccessPolicy.fromJson(
                  _json['access'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
      };
}

/// Player to be used for a video playback.
class VideoPlayer {
  core.String? embedHeight;

  /// An <iframe> tag that embeds a player that will play the video.
  core.String? embedHtml;

  /// The embed width
  core.String? embedWidth;

  VideoPlayer({
    this.embedHeight,
    this.embedHtml,
    this.embedWidth,
  });

  VideoPlayer.fromJson(core.Map _json)
      : this(
          embedHeight: _json.containsKey('embedHeight')
              ? _json['embedHeight'] as core.String
              : null,
          embedHtml: _json.containsKey('embedHtml')
              ? _json['embedHtml'] as core.String
              : null,
          embedWidth: _json.containsKey('embedWidth')
              ? _json['embedWidth'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (embedHeight != null) 'embedHeight': embedHeight!,
        if (embedHtml != null) 'embedHtml': embedHtml!,
        if (embedWidth != null) 'embedWidth': embedWidth!,
      };
}

/// Describes processing status and progress and availability of some other
/// Video resource parts.
class VideoProcessingDetails {
  /// This value indicates whether video editing suggestions, which might
  /// improve video quality or the playback experience, are available for the
  /// video.
  ///
  /// You can retrieve these suggestions by requesting the suggestions part in
  /// your videos.list() request.
  core.String? editorSuggestionsAvailability;

  /// This value indicates whether file details are available for the uploaded
  /// video.
  ///
  /// You can retrieve a video's file details by requesting the fileDetails part
  /// in your videos.list() request.
  core.String? fileDetailsAvailability;

  /// The reason that YouTube failed to process the video.
  ///
  /// This property will only have a value if the processingStatus property's
  /// value is failed.
  /// Possible string values are:
  /// - "uploadFailed"
  /// - "transcodeFailed"
  /// - "streamingFailed"
  /// - "other"
  core.String? processingFailureReason;

  /// This value indicates whether the video processing engine has generated
  /// suggestions that might improve YouTube's ability to process the the video,
  /// warnings that explain video processing problems, or errors that cause
  /// video processing problems.
  ///
  /// You can retrieve these suggestions by requesting the suggestions part in
  /// your videos.list() request.
  core.String? processingIssuesAvailability;

  /// The processingProgress object contains information about the progress
  /// YouTube has made in processing the video.
  ///
  /// The values are really only relevant if the video's processing status is
  /// processing.
  VideoProcessingDetailsProcessingProgress? processingProgress;

  /// The video's processing status.
  ///
  /// This value indicates whether YouTube was able to process the video or if
  /// the video is still being processed.
  /// Possible string values are:
  /// - "processing"
  /// - "succeeded"
  /// - "failed"
  /// - "terminated"
  core.String? processingStatus;

  /// This value indicates whether keyword (tag) suggestions are available for
  /// the video.
  ///
  /// Tags can be added to a video's metadata to make it easier for other users
  /// to find the video. You can retrieve these suggestions by requesting the
  /// suggestions part in your videos.list() request.
  core.String? tagSuggestionsAvailability;

  /// This value indicates whether thumbnail images have been generated for the
  /// video.
  core.String? thumbnailsAvailability;

  VideoProcessingDetails({
    this.editorSuggestionsAvailability,
    this.fileDetailsAvailability,
    this.processingFailureReason,
    this.processingIssuesAvailability,
    this.processingProgress,
    this.processingStatus,
    this.tagSuggestionsAvailability,
    this.thumbnailsAvailability,
  });

  VideoProcessingDetails.fromJson(core.Map _json)
      : this(
          editorSuggestionsAvailability:
              _json.containsKey('editorSuggestionsAvailability')
                  ? _json['editorSuggestionsAvailability'] as core.String
                  : null,
          fileDetailsAvailability: _json.containsKey('fileDetailsAvailability')
              ? _json['fileDetailsAvailability'] as core.String
              : null,
          processingFailureReason: _json.containsKey('processingFailureReason')
              ? _json['processingFailureReason'] as core.String
              : null,
          processingIssuesAvailability:
              _json.containsKey('processingIssuesAvailability')
                  ? _json['processingIssuesAvailability'] as core.String
                  : null,
          processingProgress: _json.containsKey('processingProgress')
              ? VideoProcessingDetailsProcessingProgress.fromJson(
                  _json['processingProgress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          processingStatus: _json.containsKey('processingStatus')
              ? _json['processingStatus'] as core.String
              : null,
          tagSuggestionsAvailability:
              _json.containsKey('tagSuggestionsAvailability')
                  ? _json['tagSuggestionsAvailability'] as core.String
                  : null,
          thumbnailsAvailability: _json.containsKey('thumbnailsAvailability')
              ? _json['thumbnailsAvailability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (editorSuggestionsAvailability != null)
          'editorSuggestionsAvailability': editorSuggestionsAvailability!,
        if (fileDetailsAvailability != null)
          'fileDetailsAvailability': fileDetailsAvailability!,
        if (processingFailureReason != null)
          'processingFailureReason': processingFailureReason!,
        if (processingIssuesAvailability != null)
          'processingIssuesAvailability': processingIssuesAvailability!,
        if (processingProgress != null)
          'processingProgress': processingProgress!,
        if (processingStatus != null) 'processingStatus': processingStatus!,
        if (tagSuggestionsAvailability != null)
          'tagSuggestionsAvailability': tagSuggestionsAvailability!,
        if (thumbnailsAvailability != null)
          'thumbnailsAvailability': thumbnailsAvailability!,
      };
}

/// Video processing progress and completion time estimate.
class VideoProcessingDetailsProcessingProgress {
  /// The number of parts of the video that YouTube has already processed.
  ///
  /// You can estimate the percentage of the video that YouTube has already
  /// processed by calculating: 100 * parts_processed / parts_total Note that
  /// since the estimated number of parts could increase without a corresponding
  /// increase in the number of parts that have already been processed, it is
  /// possible that the calculated progress could periodically decrease while
  /// YouTube processes a video.
  core.String? partsProcessed;

  /// An estimate of the total number of parts that need to be processed for the
  /// video.
  ///
  /// The number may be updated with more precise estimates while YouTube
  /// processes the video.
  core.String? partsTotal;

  /// An estimate of the amount of time, in millseconds, that YouTube needs to
  /// finish processing the video.
  core.String? timeLeftMs;

  VideoProcessingDetailsProcessingProgress({
    this.partsProcessed,
    this.partsTotal,
    this.timeLeftMs,
  });

  VideoProcessingDetailsProcessingProgress.fromJson(core.Map _json)
      : this(
          partsProcessed: _json.containsKey('partsProcessed')
              ? _json['partsProcessed'] as core.String
              : null,
          partsTotal: _json.containsKey('partsTotal')
              ? _json['partsTotal'] as core.String
              : null,
          timeLeftMs: _json.containsKey('timeLeftMs')
              ? _json['timeLeftMs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partsProcessed != null) 'partsProcessed': partsProcessed!,
        if (partsTotal != null) 'partsTotal': partsTotal!,
        if (timeLeftMs != null) 'timeLeftMs': timeLeftMs!,
      };
}

/// b/157517979: This part was never populated after it was added.
///
/// However, it sees non-zero traffic because there is generated client code in
/// the wild that refers to it \[1\]. We keep this field and do NOT remove it
/// because otherwise V3 would return an error when this part gets requested
/// \[2\]. \[1\]
/// https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html
/// \[2\]
/// http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677
///
/// Deprecated.
typedef VideoProjectDetails = $Empty;

/// Basic details about rating of a video.
class VideoRating {
  /// Rating of a video.
  /// Possible string values are:
  /// - "none"
  /// - "like" : The entity is liked.
  /// - "dislike" : The entity is disliked.
  core.String? rating;

  /// The ID that YouTube uses to uniquely identify the video.
  core.String? videoId;

  VideoRating({
    this.rating,
    this.videoId,
  });

  VideoRating.fromJson(core.Map _json)
      : this(
          rating: _json.containsKey('rating')
              ? _json['rating'] as core.String
              : null,
          videoId: _json.containsKey('videoId')
              ? _json['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rating != null) 'rating': rating!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// Recording information associated with the video.
class VideoRecordingDetails {
  /// The geolocation information associated with the video.
  GeoPoint? location;

  /// The text description of the location where the video was recorded.
  core.String? locationDescription;

  /// The date and time when the video was recorded.
  core.DateTime? recordingDate;

  VideoRecordingDetails({
    this.location,
    this.locationDescription,
    this.recordingDate,
  });

  VideoRecordingDetails.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? GeoPoint.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          locationDescription: _json.containsKey('locationDescription')
              ? _json['locationDescription'] as core.String
              : null,
          recordingDate: _json.containsKey('recordingDate')
              ? core.DateTime.parse(_json['recordingDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (locationDescription != null)
          'locationDescription': locationDescription!,
        if (recordingDate != null)
          'recordingDate': recordingDate!.toIso8601String(),
      };
}

/// Basic details about a video, including title, description, uploader,
/// thumbnails and category.
class VideoSnippet {
  /// The YouTube video category associated with the video.
  core.String? categoryId;

  /// The ID that YouTube uses to uniquely identify the channel that the video
  /// was uploaded to.
  core.String? channelId;

  /// Channel title for the channel that the video belongs to.
  core.String? channelTitle;

  /// The default_audio_language property specifies the language spoken in the
  /// video's default audio track.
  core.String? defaultAudioLanguage;

  /// The language of the videos's default snippet.
  core.String? defaultLanguage;

  /// The video's description.
  ///
  /// @mutable youtube.videos.insert youtube.videos.update
  core.String? description;

  /// Indicates if the video is an upcoming/active live broadcast.
  ///
  /// Or it's "none" if the video is not an upcoming/active live broadcast.
  /// Possible string values are:
  /// - "none"
  /// - "upcoming" : The live broadcast is upcoming.
  /// - "live" : The live broadcast is active.
  /// - "completed" : The live broadcast has been completed.
  core.String? liveBroadcastContent;

  /// Localized snippet selected with the hl parameter.
  ///
  /// If no such localization exists, this field is populated with the default
  /// snippet. (Read-only)
  VideoLocalization? localized;

  /// The date and time when the video was uploaded.
  core.DateTime? publishedAt;

  /// A list of keyword tags associated with the video.
  ///
  /// Tags may contain spaces.
  core.List<core.String>? tags;

  /// A map of thumbnail images associated with the video.
  ///
  /// For each object in the map, the key is the name of the thumbnail image,
  /// and the value is an object that contains other information about the
  /// thumbnail.
  ThumbnailDetails? thumbnails;

  /// The video's title.
  ///
  /// @mutable youtube.videos.insert youtube.videos.update
  core.String? title;

  VideoSnippet({
    this.categoryId,
    this.channelId,
    this.channelTitle,
    this.defaultAudioLanguage,
    this.defaultLanguage,
    this.description,
    this.liveBroadcastContent,
    this.localized,
    this.publishedAt,
    this.tags,
    this.thumbnails,
    this.title,
  });

  VideoSnippet.fromJson(core.Map _json)
      : this(
          categoryId: _json.containsKey('categoryId')
              ? _json['categoryId'] as core.String
              : null,
          channelId: _json.containsKey('channelId')
              ? _json['channelId'] as core.String
              : null,
          channelTitle: _json.containsKey('channelTitle')
              ? _json['channelTitle'] as core.String
              : null,
          defaultAudioLanguage: _json.containsKey('defaultAudioLanguage')
              ? _json['defaultAudioLanguage'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          liveBroadcastContent: _json.containsKey('liveBroadcastContent')
              ? _json['liveBroadcastContent'] as core.String
              : null,
          localized: _json.containsKey('localized')
              ? VideoLocalization.fromJson(
                  _json['localized'] as core.Map<core.String, core.dynamic>)
              : null,
          publishedAt: _json.containsKey('publishedAt')
              ? core.DateTime.parse(_json['publishedAt'] as core.String)
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          thumbnails: _json.containsKey('thumbnails')
              ? ThumbnailDetails.fromJson(
                  _json['thumbnails'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryId != null) 'categoryId': categoryId!,
        if (channelId != null) 'channelId': channelId!,
        if (channelTitle != null) 'channelTitle': channelTitle!,
        if (defaultAudioLanguage != null)
          'defaultAudioLanguage': defaultAudioLanguage!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (description != null) 'description': description!,
        if (liveBroadcastContent != null)
          'liveBroadcastContent': liveBroadcastContent!,
        if (localized != null) 'localized': localized!,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        if (tags != null) 'tags': tags!,
        if (thumbnails != null) 'thumbnails': thumbnails!,
        if (title != null) 'title': title!,
      };
}

/// Statistics about the video, such as the number of times the video was viewed
/// or liked.
class VideoStatistics {
  /// The number of comments for the video.
  core.String? commentCount;

  /// The number of users who have indicated that they disliked the video by
  /// giving it a negative rating.
  core.String? dislikeCount;

  /// The number of users who currently have the video marked as a favorite
  /// video.
  core.String? favoriteCount;

  /// The number of users who have indicated that they liked the video by giving
  /// it a positive rating.
  core.String? likeCount;

  /// The number of times the video has been viewed.
  core.String? viewCount;

  VideoStatistics({
    this.commentCount,
    this.dislikeCount,
    this.favoriteCount,
    this.likeCount,
    this.viewCount,
  });

  VideoStatistics.fromJson(core.Map _json)
      : this(
          commentCount: _json.containsKey('commentCount')
              ? _json['commentCount'] as core.String
              : null,
          dislikeCount: _json.containsKey('dislikeCount')
              ? _json['dislikeCount'] as core.String
              : null,
          favoriteCount: _json.containsKey('favoriteCount')
              ? _json['favoriteCount'] as core.String
              : null,
          likeCount: _json.containsKey('likeCount')
              ? _json['likeCount'] as core.String
              : null,
          viewCount: _json.containsKey('viewCount')
              ? _json['viewCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commentCount != null) 'commentCount': commentCount!,
        if (dislikeCount != null) 'dislikeCount': dislikeCount!,
        if (favoriteCount != null) 'favoriteCount': favoriteCount!,
        if (likeCount != null) 'likeCount': likeCount!,
        if (viewCount != null) 'viewCount': viewCount!,
      };
}

/// Basic details about a video category, such as its localized title.
///
/// Next Id: 17
class VideoStatus {
  /// This value indicates if the video can be embedded on another website.
  ///
  /// @mutable youtube.videos.insert youtube.videos.update
  core.bool? embeddable;

  /// This value explains why a video failed to upload.
  ///
  /// This property is only present if the uploadStatus property indicates that
  /// the upload failed.
  /// Possible string values are:
  /// - "conversion" : Unable to convert video content.
  /// - "invalidFile" : Invalid file format.
  /// - "emptyFile" : Empty file.
  /// - "tooSmall" : File was too small.
  /// - "codec" : Unsupported codec.
  /// - "uploadAborted" : Upload wasn't finished.
  core.String? failureReason;

  /// The video's license.
  ///
  /// @mutable youtube.videos.insert youtube.videos.update
  /// Possible string values are:
  /// - "youtube"
  /// - "creativeCommon"
  core.String? license;
  core.bool? madeForKids;

  /// The video's privacy status.
  /// Possible string values are:
  /// - "public"
  /// - "unlisted"
  /// - "private"
  core.String? privacyStatus;

  /// This value indicates if the extended video statistics on the watch page
  /// can be viewed by everyone.
  ///
  /// Note that the view count, likes, etc will still be visible if this is
  /// disabled. @mutable youtube.videos.insert youtube.videos.update
  core.bool? publicStatsViewable;

  /// The date and time when the video is scheduled to publish.
  ///
  /// It can be set only if the privacy status of the video is private..
  core.DateTime? publishAt;

  /// This value explains why YouTube rejected an uploaded video.
  ///
  /// This property is only present if the uploadStatus property indicates that
  /// the upload was rejected.
  /// Possible string values are:
  /// - "copyright" : Copyright infringement.
  /// - "inappropriate" : Inappropriate video content.
  /// - "duplicate" : Duplicate upload in the same channel.
  /// - "termsOfUse" : Terms of use violation.
  /// - "uploaderAccountSuspended" : Uploader account was suspended.
  /// - "length" : Video duration was too long.
  /// - "claim" : Blocked by content owner.
  /// - "uploaderAccountClosed" : Uploader closed his/her account.
  /// - "trademark" : Trademark infringement.
  /// - "legal" : An unspecified legal reason.
  core.String? rejectionReason;
  core.bool? selfDeclaredMadeForKids;

  /// The status of the uploaded video.
  /// Possible string values are:
  /// - "uploaded" : Video has been uploaded but not processed yet.
  /// - "processed" : Video has been successfully processed.
  /// - "failed" : Processing has failed. See FailureReason.
  /// - "rejected" : Video has been rejected. See RejectionReason.
  /// - "deleted" : Video has been deleted.
  core.String? uploadStatus;

  VideoStatus({
    this.embeddable,
    this.failureReason,
    this.license,
    this.madeForKids,
    this.privacyStatus,
    this.publicStatsViewable,
    this.publishAt,
    this.rejectionReason,
    this.selfDeclaredMadeForKids,
    this.uploadStatus,
  });

  VideoStatus.fromJson(core.Map _json)
      : this(
          embeddable: _json.containsKey('embeddable')
              ? _json['embeddable'] as core.bool
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          license: _json.containsKey('license')
              ? _json['license'] as core.String
              : null,
          madeForKids: _json.containsKey('madeForKids')
              ? _json['madeForKids'] as core.bool
              : null,
          privacyStatus: _json.containsKey('privacyStatus')
              ? _json['privacyStatus'] as core.String
              : null,
          publicStatsViewable: _json.containsKey('publicStatsViewable')
              ? _json['publicStatsViewable'] as core.bool
              : null,
          publishAt: _json.containsKey('publishAt')
              ? core.DateTime.parse(_json['publishAt'] as core.String)
              : null,
          rejectionReason: _json.containsKey('rejectionReason')
              ? _json['rejectionReason'] as core.String
              : null,
          selfDeclaredMadeForKids: _json.containsKey('selfDeclaredMadeForKids')
              ? _json['selfDeclaredMadeForKids'] as core.bool
              : null,
          uploadStatus: _json.containsKey('uploadStatus')
              ? _json['uploadStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (embeddable != null) 'embeddable': embeddable!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (license != null) 'license': license!,
        if (madeForKids != null) 'madeForKids': madeForKids!,
        if (privacyStatus != null) 'privacyStatus': privacyStatus!,
        if (publicStatsViewable != null)
          'publicStatsViewable': publicStatsViewable!,
        if (publishAt != null) 'publishAt': publishAt!.toIso8601String(),
        if (rejectionReason != null) 'rejectionReason': rejectionReason!,
        if (selfDeclaredMadeForKids != null)
          'selfDeclaredMadeForKids': selfDeclaredMadeForKids!,
        if (uploadStatus != null) 'uploadStatus': uploadStatus!,
      };
}

/// Specifies suggestions on how to improve video content, including encoding
/// hints, tag suggestions, and editor suggestions.
class VideoSuggestions {
  /// A list of video editing operations that might improve the video quality or
  /// playback experience of the uploaded video.
  core.List<core.String>? editorSuggestions;

  /// A list of errors that will prevent YouTube from successfully processing
  /// the uploaded video video.
  ///
  /// These errors indicate that, regardless of the video's current processing
  /// status, eventually, that status will almost certainly be failed.
  core.List<core.String>? processingErrors;

  /// A list of suggestions that may improve YouTube's ability to process the
  /// video.
  core.List<core.String>? processingHints;

  /// A list of reasons why YouTube may have difficulty transcoding the uploaded
  /// video or that might result in an erroneous transcoding.
  ///
  /// These warnings are generated before YouTube actually processes the
  /// uploaded video file. In addition, they identify issues that are unlikely
  /// to cause the video processing to fail but that might cause problems such
  /// as sync issues, video artifacts, or a missing audio track.
  core.List<core.String>? processingWarnings;

  /// A list of keyword tags that could be added to the video's metadata to
  /// increase the likelihood that users will locate your video when searching
  /// or browsing on YouTube.
  core.List<VideoSuggestionsTagSuggestion>? tagSuggestions;

  VideoSuggestions({
    this.editorSuggestions,
    this.processingErrors,
    this.processingHints,
    this.processingWarnings,
    this.tagSuggestions,
  });

  VideoSuggestions.fromJson(core.Map _json)
      : this(
          editorSuggestions: _json.containsKey('editorSuggestions')
              ? (_json['editorSuggestions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          processingErrors: _json.containsKey('processingErrors')
              ? (_json['processingErrors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          processingHints: _json.containsKey('processingHints')
              ? (_json['processingHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          processingWarnings: _json.containsKey('processingWarnings')
              ? (_json['processingWarnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tagSuggestions: _json.containsKey('tagSuggestions')
              ? (_json['tagSuggestions'] as core.List)
                  .map((value) => VideoSuggestionsTagSuggestion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (editorSuggestions != null) 'editorSuggestions': editorSuggestions!,
        if (processingErrors != null) 'processingErrors': processingErrors!,
        if (processingHints != null) 'processingHints': processingHints!,
        if (processingWarnings != null)
          'processingWarnings': processingWarnings!,
        if (tagSuggestions != null) 'tagSuggestions': tagSuggestions!,
      };
}

/// A single tag suggestion with it's relevance information.
class VideoSuggestionsTagSuggestion {
  /// A set of video categories for which the tag is relevant.
  ///
  /// You can use this information to display appropriate tag suggestions based
  /// on the video category that the video uploader associates with the video.
  /// By default, tag suggestions are relevant for all categories if there are
  /// no restricts defined for the keyword.
  core.List<core.String>? categoryRestricts;

  /// The keyword tag suggested for the video.
  core.String? tag;

  VideoSuggestionsTagSuggestion({
    this.categoryRestricts,
    this.tag,
  });

  VideoSuggestionsTagSuggestion.fromJson(core.Map _json)
      : this(
          categoryRestricts: _json.containsKey('categoryRestricts')
              ? (_json['categoryRestricts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryRestricts != null) 'categoryRestricts': categoryRestricts!,
        if (tag != null) 'tag': tag!,
      };
}

/// Freebase topic information related to the video.
class VideoTopicDetails {
  /// Similar to topic_id, except that these topics are merely relevant to the
  /// video.
  ///
  /// These are topics that may be mentioned in, or appear in the video. You can
  /// retrieve information about each topic using Freebase Topic API.
  core.List<core.String>? relevantTopicIds;

  /// A list of Wikipedia URLs that provide a high-level description of the
  /// video's content.
  core.List<core.String>? topicCategories;

  /// A list of Freebase topic IDs that are centrally associated with the video.
  ///
  /// These are topics that are centrally featured in the video, and it can be
  /// said that the video is mainly about each of these. You can retrieve
  /// information about each topic using the < a
  /// href="http://wiki.freebase.com/wiki/Topic_API">Freebase Topic API.
  core.List<core.String>? topicIds;

  VideoTopicDetails({
    this.relevantTopicIds,
    this.topicCategories,
    this.topicIds,
  });

  VideoTopicDetails.fromJson(core.Map _json)
      : this(
          relevantTopicIds: _json.containsKey('relevantTopicIds')
              ? (_json['relevantTopicIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topicCategories: _json.containsKey('topicCategories')
              ? (_json['topicCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topicIds: _json.containsKey('topicIds')
              ? (_json['topicIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relevantTopicIds != null) 'relevantTopicIds': relevantTopicIds!,
        if (topicCategories != null) 'topicCategories': topicCategories!,
        if (topicIds != null) 'topicIds': topicIds!,
      };
}

/// Branding properties for the watch.
///
/// All deprecated.
class WatchSettings {
  /// The text color for the video watch page's branded area.
  core.String? backgroundColor;

  /// An ID that uniquely identifies a playlist that displays next to the video
  /// player.
  core.String? featuredPlaylistId;

  /// The background color for the video watch page's branded area.
  core.String? textColor;

  WatchSettings({
    this.backgroundColor,
    this.featuredPlaylistId,
    this.textColor,
  });

  WatchSettings.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? _json['backgroundColor'] as core.String
              : null,
          featuredPlaylistId: _json.containsKey('featuredPlaylistId')
              ? _json['featuredPlaylistId'] as core.String
              : null,
          textColor: _json.containsKey('textColor')
              ? _json['textColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (featuredPlaylistId != null)
          'featuredPlaylistId': featuredPlaylistId!,
        if (textColor != null) 'textColor': textColor!,
      };
}
