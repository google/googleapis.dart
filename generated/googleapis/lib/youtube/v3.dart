library googleapis.youtube.v3;

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

/** Programmatic access to YouTube features. */
class YoutubeApi {
  /** Manage your YouTube account */
  static const YoutubeScope = "https://www.googleapis.com/auth/youtube";

  /** View your YouTube account */
  static const YoutubeReadonlyScope = "https://www.googleapis.com/auth/youtube.readonly";

  /** Manage your YouTube videos */
  static const YoutubeUploadScope = "https://www.googleapis.com/auth/youtube.upload";

  /** View and manage your assets and associated content on YouTube */
  static const YoutubepartnerScope = "https://www.googleapis.com/auth/youtubepartner";

  /**
   * View private information of your YouTube channel relevant during the audit
   * process with a YouTube partner
   */
  static const YoutubepartnerChannelAuditScope = "https://www.googleapis.com/auth/youtubepartner-channel-audit";


  final common_internal.ApiRequester _requester;

  ActivitiesResourceApi get activities => new ActivitiesResourceApi(_requester);
  ChannelBannersResourceApi get channelBanners => new ChannelBannersResourceApi(_requester);
  ChannelSectionsResourceApi get channelSections => new ChannelSectionsResourceApi(_requester);
  ChannelsResourceApi get channels => new ChannelsResourceApi(_requester);
  GuideCategoriesResourceApi get guideCategories => new GuideCategoriesResourceApi(_requester);
  I18nLanguagesResourceApi get i18nLanguages => new I18nLanguagesResourceApi(_requester);
  I18nRegionsResourceApi get i18nRegions => new I18nRegionsResourceApi(_requester);
  LiveBroadcastsResourceApi get liveBroadcasts => new LiveBroadcastsResourceApi(_requester);
  LiveStreamsResourceApi get liveStreams => new LiveStreamsResourceApi(_requester);
  PlaylistItemsResourceApi get playlistItems => new PlaylistItemsResourceApi(_requester);
  PlaylistsResourceApi get playlists => new PlaylistsResourceApi(_requester);
  SearchResourceApi get search => new SearchResourceApi(_requester);
  SubscriptionsResourceApi get subscriptions => new SubscriptionsResourceApi(_requester);
  ThumbnailsResourceApi get thumbnails => new ThumbnailsResourceApi(_requester);
  VideoCategoriesResourceApi get videoCategories => new VideoCategoriesResourceApi(_requester);
  VideosResourceApi get videos => new VideosResourceApi(_requester);
  WatermarksResourceApi get watermarks => new WatermarksResourceApi(_requester);

  YoutubeApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "youtube/v3/");
}


/** Not documented yet. */
class ActivitiesResourceApi {
  final common_internal.ApiRequester _requester;

  ActivitiesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Posts a bulletin for a specific channel. (The user submitting the request
   * must be authorized to act on the channel's behalf.)
   *
   * Note: Even though an activity resource can contain information about
   * actions like a user rating a video or marking a video as a favorite, you
   * need to use other API methods to generate those activity resources. For
   * example, you would use the API's videos.rate() method to rate a video and
   * the playlistItems.insert() method to mark a video as a favorite.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * contentDetails.
   *
   * Completes with a [Activity].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Activity> insert(Activity request, core.String part) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];


    _url = 'activities';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Activity.fromJson(data));
  }

  /**
   * Returns a list of channel activity events that match the request criteria.
   * For example, you can retrieve events associated with a particular channel,
   * events associated with the user's subscriptions and Google+ friends, or the
   * YouTube home page feed, which is customized for each user.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * activity resource properties that the API response will include. The part
   * names that you can include in the parameter value are id, snippet, and
   * contentDetails.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * activity resource, the snippet property contains other properties that
   * identify the type of activity, a display title for the activity, and so
   * forth. If you set part=snippet, the API response will also contain all of
   * those nested properties.
   *
   * [channelId] - The channelId parameter specifies a unique YouTube channel
   * ID. The API will then return a list of that channel's activities.
   *
   * [home] - Set this parameter's value to true to retrieve the activity feed
   * that displays on the YouTube home page for the currently authenticated
   * user.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the
   * authenticated user's activities.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * [publishedAfter] - The publishedAfter parameter specifies the earliest date
   * and time that an activity could have occurred for that activity to be
   * included in the API response. If the parameter value specifies a day, but
   * not a time, then any activities that occurred that day will be included in
   * the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
   * format.
   *
   * [publishedBefore] - The publishedBefore parameter specifies the date and
   * time before which an activity must have occurred for that activity to be
   * included in the API response. If the parameter value specifies a day, but
   * not a time, then any activities that occurred that day will be excluded
   * from the result set. The value is specified in ISO 8601
   * (YYYY-MM-DDThh:mm:ss.sZ) format.
   *
   * [regionCode] - The regionCode parameter instructs the API to return results
   * for the specified country. The parameter value is an ISO 3166-1 alpha-2
   * country code. YouTube uses this value when the authorized user's previous
   * activity on YouTube does not provide enough information to generate the
   * activity feed.
   *
   * Completes with a [ActivityListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ActivityListResponse> list(core.String part, {core.String channelId, core.bool home, core.int maxResults, core.bool mine, core.String pageToken, core.DateTime publishedAfter, core.DateTime publishedBefore, core.String regionCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (channelId != null) {
      _queryParams["channelId"] = [channelId];
    }
    if (home != null) {
      _queryParams["home"] = ["${home}"];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (publishedAfter != null) {
      _queryParams["publishedAfter"] = [(publishedAfter).toIso8601String()];
    }
    if (publishedBefore != null) {
      _queryParams["publishedBefore"] = [(publishedBefore).toIso8601String()];
    }
    if (regionCode != null) {
      _queryParams["regionCode"] = [regionCode];
    }


    _url = 'activities';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ActivityListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ChannelBannersResourceApi {
  final common_internal.ApiRequester _requester;

  ChannelBannersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Uploads a channel banner image to YouTube. This method represents the first
   * two steps in a three-step process to update the banner image for a channel:
   *
   * - Call the channelBanners.insert method to upload the binary image data to
   * YouTube. The image must have a 16:9 aspect ratio and be at least 2120x1192
   * pixels.
   * - Extract the url property's value from the response that the API returns
   * for step 1.
   * - Call the channels.update method to update the channel's branding
   * settings. Set the brandingSettings.image.bannerExternalUrl property's value
   * to the URL obtained in step 2.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [ChannelBannerResource].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ChannelBannerResource> insert(ChannelBannerResource request, {core.String onBehalfOfContentOwner, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = 'channelBanners/insert';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/channelBanners/insert';
    } else {
      _url = '/upload/youtube/v3/channelBanners/insert';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ChannelBannerResource.fromJson(data));
  }

}


/** Not documented yet. */
class ChannelSectionsResourceApi {
  final common_internal.ApiRequester _requester;

  ChannelSectionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a channelSection.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube channelSection ID for the
   * resource that is being deleted. In a channelSection resource, the id
   * property specifies the YouTube channelSection ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];

    _downloadOptions = null;

    _url = 'channelSections';

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
   * Adds a channelSection for the authenticated user's channel.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * contentDetails.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [ChannelSection].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ChannelSection> insert(ChannelSection request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'channelSections';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ChannelSection.fromJson(data));
  }

  /**
   * Returns channelSection resources that match the API request criteria.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * channelSection resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet, and
   * contentDetails.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * channelSection resource, the snippet property contains other properties,
   * such as a display title for the channelSection. If you set part=snippet,
   * the API response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID. The
   * API will only return that channel's channelSections.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * channelSection ID(s) for the resource(s) that are being retrieved. In a
   * channelSection resource, the id property specifies the YouTube
   * channelSection ID.
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the
   * authenticated user's channelSections.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [ChannelSectionListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ChannelSectionListResponse> list(core.String part, {core.String channelId, core.String id, core.bool mine, core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (channelId != null) {
      _queryParams["channelId"] = [channelId];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'channelSections';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ChannelSectionListResponse.fromJson(data));
  }

  /**
   * Update a channelSection.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * contentDetails.
   *
   * Completes with a [ChannelSection].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ChannelSection> update(ChannelSection request, core.String part) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];


    _url = 'channelSections';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ChannelSection.fromJson(data));
  }

}


/** Not documented yet. */
class ChannelsResourceApi {
  final common_internal.ApiRequester _requester;

  ChannelsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a collection of zero or more channel resources that match the
   * request criteria.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * channel resource properties that the API response will include. The part
   * names that you can include in the parameter value are id, snippet,
   * contentDetails, statistics, topicDetails, and invideoPromotion.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * channel resource, the contentDetails property contains other properties,
   * such as the uploads properties. As such, if you set part=contentDetails,
   * the API response will also contain all of those nested properties.
   *
   * [categoryId] - The categoryId parameter specifies a YouTube guide category,
   * thereby requesting YouTube channels associated with that category.
   *
   * [forUsername] - The forUsername parameter specifies a YouTube username,
   * thereby requesting the channel associated with that username.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * channel ID(s) for the resource(s) that are being retrieved. In a channel
   * resource, the id property specifies the channel's YouTube channel ID.
   *
   * [managedByMe] - Set this parameter's value to true to instruct the API to
   * only return channels managed by the content owner that the
   * onBehalfOfContentOwner parameter specifies. The user must be authenticated
   * as a CMS account linked to the specified content owner and
   * onBehalfOfContentOwner must be provided.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [mine] - Set this parameter's value to true to instruct the API to only
   * return channels owned by the authenticated user.
   *
   * [mySubscribers] - Set this parameter's value to true to retrieve a list of
   * channels that subscribed to the authenticated user's channel.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates
   * that the authenticated user is acting on behalf of the content owner
   * specified in the parameter value. This parameter is intended for YouTube
   * content partners that own and manage many different YouTube channels. It
   * allows content owners to authenticate once and get access to all their
   * video and channel data, without having to provide authentication
   * credentials for each individual channel. The actual CMS account that the
   * user authenticates with needs to be linked to the specified YouTube content
   * owner.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Completes with a [ChannelListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ChannelListResponse> list(core.String part, {core.String categoryId, core.String forUsername, core.String id, core.bool managedByMe, core.int maxResults, core.bool mine, core.bool mySubscribers, core.String onBehalfOfContentOwner, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (categoryId != null) {
      _queryParams["categoryId"] = [categoryId];
    }
    if (forUsername != null) {
      _queryParams["forUsername"] = [forUsername];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (managedByMe != null) {
      _queryParams["managedByMe"] = ["${managedByMe}"];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (mySubscribers != null) {
      _queryParams["mySubscribers"] = ["${mySubscribers}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'channels';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ChannelListResponse.fromJson(data));
  }

  /**
   * Updates a channel's metadata.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are id and
   * invideoPromotion.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates
   * that the authenticated user is acting on behalf of the content owner
   * specified in the parameter value. This parameter is intended for YouTube
   * content partners that own and manage many different YouTube channels. It
   * allows content owners to authenticate once and get access to all their
   * video and channel data, without having to provide authentication
   * credentials for each individual channel. The actual CMS account that the
   * user authenticates with needs to be linked to the specified YouTube content
   * owner.
   *
   * Completes with a [Channel].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Channel> update(Channel request, core.String part, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'channels';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }

}


/** Not documented yet. */
class GuideCategoriesResourceApi {
  final common_internal.ApiRequester _requester;

  GuideCategoriesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a list of categories that can be associated with YouTube channels.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * guideCategory resource properties that the API response will include. The
   * part names that you can include in the parameter value are id and snippet.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * guideCategory resource, the snippet property contains other properties,
   * such as the category's title. If you set part=snippet, the API response
   * will also contain all of those nested properties.
   *
   * [hl] - The hl parameter specifies the language that will be used for text
   * values in the API response.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * channel category ID(s) for the resource(s) that are being retrieved. In a
   * guideCategory resource, the id property specifies the YouTube channel
   * category ID.
   *
   * [regionCode] - The regionCode parameter instructs the API to return the
   * list of guide categories available in the specified country. The parameter
   * value is an ISO 3166-1 alpha-2 country code.
   *
   * Completes with a [GuideCategoryListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<GuideCategoryListResponse> list(core.String part, {core.String hl, core.String id, core.String regionCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (regionCode != null) {
      _queryParams["regionCode"] = [regionCode];
    }


    _url = 'guideCategories';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GuideCategoryListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class I18nLanguagesResourceApi {
  final common_internal.ApiRequester _requester;

  I18nLanguagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a list of supported languages.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * i18nLanguage resource properties that the API response will include. The
   * part names that you can include in the parameter value are id and snippet.
   *
   * [hl] - The hl parameter specifies the language that should be used for text
   * values in the API response.
   *
   * Completes with a [I18nLanguageListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<I18nLanguageListResponse> list(core.String part, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'i18nLanguages';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new I18nLanguageListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class I18nRegionsResourceApi {
  final common_internal.ApiRequester _requester;

  I18nRegionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a list of supported regions.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * i18nRegion resource properties that the API response will include. The part
   * names that you can include in the parameter value are id and snippet.
   *
   * [hl] - The hl parameter specifies the language that should be used for text
   * values in the API response.
   *
   * Completes with a [I18nRegionListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<I18nRegionListResponse> list(core.String part, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'i18nRegions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new I18nRegionListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class LiveBroadcastsResourceApi {
  final common_internal.ApiRequester _requester;

  LiveBroadcastsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Binds a YouTube broadcast to a stream or removes an existing binding
   * between a broadcast and a stream. A broadcast can only be bound to one
   * video stream.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is
   * being bound to a video stream.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * liveBroadcast resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet,
   * contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [streamId] - The streamId parameter specifies the unique ID of the video
   * stream that is being bound to a broadcast. If this parameter is omitted,
   * the API will remove any existing binding between the broadcast and a video
   * stream.
   *
   * Completes with a [LiveBroadcast].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcast> bind(core.String id, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String streamId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (streamId != null) {
      _queryParams["streamId"] = [streamId];
    }


    _url = 'liveBroadcasts/bind';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Controls the settings for a slate that can be displayed in the broadcast
   * stream.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID that
   * uniquely identifies the broadcast in which the slate is being updated.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * liveBroadcast resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet,
   * contentDetails, and status.
   *
   * [displaySlate] - The displaySlate parameter specifies whether the slate is
   * being enabled or disabled.
   *
   * [offsetTimeMs] - The offsetTimeMs parameter specifies a positive time
   * offset when the specified slate change will occur. The value is measured in
   * milliseconds from the beginning of the broadcast's monitor stream, which is
   * the time that the testing phase for the broadcast began. Even though it is
   * specified in milliseconds, the value is actually an approximation, and
   * YouTube completes the requested action as closely as possible to that time.
   *
   * If you do not specify a value for this parameter, then YouTube performs the
   * action as soon as possible. See the Getting started guide for more details.
   *
   * Important: You should only specify a value for this parameter if your
   * broadcast stream is delayed.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [walltime] - The walltime parameter specifies the wall clock time at which
   * the specified slate change will occur. The value is specified in ISO 8601
   * (YYYY-MM-DDThh:mm:ss.sssZ) format.
   *
   * Completes with a [LiveBroadcast].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcast> control(core.String id, core.String part, {core.bool displaySlate, core.String offsetTimeMs, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.DateTime walltime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (displaySlate != null) {
      _queryParams["displaySlate"] = ["${displaySlate}"];
    }
    if (offsetTimeMs != null) {
      _queryParams["offsetTimeMs"] = [offsetTimeMs];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (walltime != null) {
      _queryParams["walltime"] = [(walltime).toIso8601String()];
    }


    _url = 'liveBroadcasts/control';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Deletes a broadcast.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID for the
   * resource that is being deleted.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }

    _downloadOptions = null;

    _url = 'liveBroadcasts';

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
   * Creates a broadcast.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part properties that you can include in the parameter value are id,
   * snippet, contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [LiveBroadcast].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcast> insert(LiveBroadcast request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'liveBroadcasts';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Returns a list of YouTube broadcasts that match the API request parameters.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * liveBroadcast resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet,
   * contentDetails, and status.
   *
   * [broadcastStatus] - The broadcastStatus parameter filters the API response
   * to only include broadcasts with the specified status.
   * Possible string values are:
   * - "active" : Return current live broadcasts.
   * - "all" : Return all broadcasts.
   * - "completed" : Return broadcasts that have already ended.
   * - "upcoming" : Return broadcasts that have not yet started.
   *
   * [id] - The id parameter specifies a comma-separated list of YouTube
   * broadcast IDs that identify the broadcasts being retrieved. In a
   * liveBroadcast resource, the id property specifies the broadcast's ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [mine] - The mine parameter can be used to instruct the API to only return
   * broadcasts owned by the authenticated user. Set the parameter value to true
   * to only retrieve your own broadcasts.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Completes with a [LiveBroadcastListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcastListResponse> list(core.String part, {core.String broadcastStatus, core.String id, core.int maxResults, core.bool mine, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (broadcastStatus != null) {
      _queryParams["broadcastStatus"] = [broadcastStatus];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'liveBroadcasts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcastListResponse.fromJson(data));
  }

  /**
   * Changes the status of a YouTube live broadcast and initiates any processes
   * associated with the new status. For example, when you transition a
   * broadcast's status to testing, YouTube starts to transmit video to that
   * broadcast's monitor stream. Before calling this method, you should confirm
   * that the value of the status.streamStatus property for the stream bound to
   * your broadcast is active.
   *
   * Request parameters:
   *
   * [broadcastStatus] - The broadcastStatus parameter identifies the state to
   * which the broadcast is changing. Note that to transition a broadcast to
   * either the testing or live state, the status.streamStatus must be active
   * for the stream that the broadcast is bound to.
   * Possible string values are:
   * - "complete" : The broadcast is over. YouTube stops transmitting video.
   * - "live" : The broadcast is visible to its audience. YouTube transmits
   * video to the broadcast's monitor stream and its broadcast stream.
   * - "testing" : Start testing the broadcast. YouTube transmits video to the
   * broadcast's monitor stream. Note that you can only transition a broadcast
   * to the testing state if its
   * contentDetails.monitorStream.enableMonitorStream property is set to true.
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is
   * transitioning to another status.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * liveBroadcast resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet,
   * contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [LiveBroadcast].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcast> transition(core.String broadcastStatus, core.String id, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (broadcastStatus == null) {
      throw new core.ArgumentError("Parameter broadcastStatus is required.");
    }
    _queryParams["broadcastStatus"] = [broadcastStatus];
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'liveBroadcasts/transition';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Updates a broadcast. For example, you could modify the broadcast settings
   * defined in the liveBroadcast resource's contentDetails object.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part properties that you can include in the parameter value are id,
   * snippet, contentDetails, and status.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies. For example, a broadcast's privacy status is defined in the
   * status part. As such, if your request is updating a private or unlisted
   * broadcast, and the request's part parameter value includes the status part,
   * the broadcast's privacy setting will be updated to whatever value the
   * request body specifies. If the request body does not specify a value, the
   * existing privacy setting will be removed and the broadcast will revert to
   * the default privacy setting.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [LiveBroadcast].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveBroadcast> update(LiveBroadcast request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'liveBroadcasts';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveBroadcast.fromJson(data));
  }

}


/** Not documented yet. */
class LiveStreamsResourceApi {
  final common_internal.ApiRequester _requester;

  LiveStreamsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a video stream.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube live stream ID for the
   * resource that is being deleted.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }

    _downloadOptions = null;

    _url = 'liveStreams';

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
   * Creates a video stream. The stream enables you to send your video to
   * YouTube, which can then broadcast the video to your audience.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part properties that you can include in the parameter value are id,
   * snippet, cdn, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [LiveStream].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveStream> insert(LiveStream request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'liveStreams';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveStream.fromJson(data));
  }

  /**
   * Returns a list of video streams that match the API request parameters.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * liveStream resource properties that the API response will include. The part
   * names that you can include in the parameter value are id, snippet, cdn, and
   * status.
   *
   * [id] - The id parameter specifies a comma-separated list of YouTube stream
   * IDs that identify the streams being retrieved. In a liveStream resource,
   * the id property specifies the stream's ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set. Acceptable values are 0 to
   * 50, inclusive. The default value is 5.
   * Value must be between "0" and "50".
   *
   * [mine] - The mine parameter can be used to instruct the API to only return
   * streams owned by the authenticated user. Set the parameter value to true to
   * only retrieve your own streams.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Completes with a [LiveStreamListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveStreamListResponse> list(core.String part, {core.String id, core.int maxResults, core.bool mine, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'liveStreams';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveStreamListResponse.fromJson(data));
  }

  /**
   * Updates a video stream. If the properties that you want to change cannot be
   * updated, then you need to create a new stream with the proper settings.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part properties that you can include in the parameter value are id,
   * snippet, cdn, and status.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies. If the request body does not specify a value for a mutable
   * property, the existing value for that property will be removed.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [LiveStream].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LiveStream> update(LiveStream request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'liveStreams';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LiveStream.fromJson(data));
  }

}


/** Not documented yet. */
class PlaylistItemsResourceApi {
  final common_internal.ApiRequester _requester;

  PlaylistItemsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a playlist item.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube playlist item ID for the
   * playlist item that is being deleted. In a playlistItem resource, the id
   * property specifies the playlist item's ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];

    _downloadOptions = null;

    _url = 'playlistItems';

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
   * Adds a resource to a playlist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet,
   * contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [PlaylistItem].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PlaylistItem> insert(PlaylistItem request, core.String part, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'playlistItems';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PlaylistItem.fromJson(data));
  }

  /**
   * Returns a collection of playlist items that match the API request
   * parameters. You can retrieve all of the playlist items in a specified
   * playlist or retrieve one or more playlist items by their unique IDs.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * playlistItem resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet,
   * contentDetails, and status.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * playlistItem resource, the snippet property contains numerous fields,
   * including the title, description, position, and resourceId properties. As
   * such, if you set part=snippet, the API response will contain all of those
   * properties.
   *
   * [id] - The id parameter specifies a comma-separated list of one or more
   * unique playlist item IDs.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * [playlistId] - The playlistId parameter specifies the unique ID of the
   * playlist for which you want to retrieve playlist items. Note that even
   * though this is an optional parameter, every request to retrieve playlist
   * items must specify a value for either the id parameter or the playlistId
   * parameter.
   *
   * [videoId] - The videoId parameter specifies that the request should return
   * only the playlist items that contain the specified video.
   *
   * Completes with a [PlaylistItemListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PlaylistItemListResponse> list(core.String part, {core.String id, core.int maxResults, core.String onBehalfOfContentOwner, core.String pageToken, core.String playlistId, core.String videoId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (playlistId != null) {
      _queryParams["playlistId"] = [playlistId];
    }
    if (videoId != null) {
      _queryParams["videoId"] = [videoId];
    }


    _url = 'playlistItems';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PlaylistItemListResponse.fromJson(data));
  }

  /**
   * Modifies a playlist item. For example, you could update the item's position
   * in the playlist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet,
   * contentDetails, and status.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies. For example, a playlist item can specify a start time and end
   * time, which identify the times portion of the video that should play when
   * users watch the video in the playlist. If your request is updating a
   * playlist item that sets these values, and the request's part parameter
   * value includes the contentDetails part, the playlist item's start and end
   * times will be updated to whatever value the request body specifies. If the
   * request body does not specify values, the existing start and end times will
   * be removed and replaced with the default settings.
   *
   * Completes with a [PlaylistItem].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PlaylistItem> update(PlaylistItem request, core.String part) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];


    _url = 'playlistItems';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PlaylistItem.fromJson(data));
  }

}


/** Not documented yet. */
class PlaylistsResourceApi {
  final common_internal.ApiRequester _requester;

  PlaylistsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a playlist.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube playlist ID for the playlist
   * that is being deleted. In a playlist resource, the id property specifies
   * the playlist's ID.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _downloadOptions = null;

    _url = 'playlists';

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
   * Creates a playlist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * Completes with a [Playlist].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Playlist> insert(Playlist request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }


    _url = 'playlists';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Playlist.fromJson(data));
  }

  /**
   * Returns a collection of playlists that match the API request parameters.
   * For example, you can retrieve all playlists that the authenticated user
   * owns, or you can retrieve one or more playlists by their unique IDs.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * playlist resource properties that the API response will include. The part
   * names that you can include in the parameter value are id, snippet, status,
   * and contentDetails.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * playlist resource, the snippet property contains properties like author,
   * title, description, tags, and timeCreated. As such, if you set
   * part=snippet, the API response will contain all of those properties.
   *
   * [channelId] - This value indicates that the API should only return the
   * specified channel's playlists.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * playlist ID(s) for the resource(s) that are being retrieved. In a playlist
   * resource, the id property specifies the playlist's YouTube playlist ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [mine] - Set this parameter's value to true to instruct the API to only
   * return playlists owned by the authenticated user.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Completes with a [PlaylistListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PlaylistListResponse> list(core.String part, {core.String channelId, core.String id, core.int maxResults, core.bool mine, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (channelId != null) {
      _queryParams["channelId"] = [channelId];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'playlists';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PlaylistListResponse.fromJson(data));
  }

  /**
   * Modifies a playlist. For example, you could change a playlist's title,
   * description, or privacy status.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * status.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies. For example, a playlist's privacy setting is contained in the
   * status part. As such, if your request is updating a private playlist, and
   * the request's part parameter value includes the status part, the playlist's
   * privacy setting will be updated to whatever value the request body
   * specifies. If the request body does not specify a value, the existing
   * privacy setting will be removed and the playlist will revert to the default
   * privacy setting.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [Playlist].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Playlist> update(Playlist request, core.String part, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'playlists';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Playlist.fromJson(data));
  }

}


/** Not documented yet. */
class SearchResourceApi {
  final common_internal.ApiRequester _requester;

  SearchResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a collection of search results that match the query parameters
   * specified in the API request. By default, a search result set identifies
   * matching video, channel, and playlist resources, but you can also configure
   * queries to only retrieve a specific type of resource.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * search resource properties that the API response will include. The part
   * names that you can include in the parameter value are id and snippet.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a search
   * result, the snippet property contains other properties that identify the
   * result's title, description, and so forth. If you set part=snippet, the API
   * response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter indicates that the API response
   * should only contain resources created by the channel
   *
   * [channelType] - The channelType parameter lets you restrict a search to a
   * particular type of channel.
   * Possible string values are:
   * - "any" : Return all channels.
   * - "show" : Only retrieve shows.
   *
   * [eventType] - The eventType parameter restricts a search to broadcast
   * events.
   * Possible string values are:
   * - "completed" : Only include completed broadcasts.
   * - "live" : Only include active broadcasts.
   * - "upcoming" : Only include upcoming broadcasts.
   *
   * [forContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The forContentOwner parameter restricts the search to only retrieve
   * resources owned by the content owner specified by the
   * onBehalfOfContentOwner parameter. The user must be authenticated using a
   * CMS account linked to the specified content owner and
   * onBehalfOfContentOwner must be provided.
   *
   * [forMine] - The forMine parameter restricts the search to only retrieve
   * videos owned by the authenticated user. If you set this parameter to true,
   * then the type parameter's value must also be set to video.
   *
   * [location] - The location parameter restricts a search to videos that have
   * a geographical location specified in their metadata. The value is a string
   * that specifies geographic latitude/longitude coordinates e.g.
   * (37.42307,-122.08427)
   *
   * [locationRadius] - The locationRadius, in conjunction with the location
   * parameter, defines a geographic area. If the geographic coordinates
   * associated with a video fall within that area, then the video may be
   * included in search results. This parameter value must be a floating point
   * number followed by a measurement unit. Valid measurement units are m, km,
   * ft, and mi. For example, valid parameter values include 1500m, 5km,
   * 10000ft, and 0.75mi. The API does not support locationRadius parameter
   * values larger than 1000 kilometers.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [order] - The order parameter specifies the method that will be used to
   * order resources in the API response.
   * Possible string values are:
   * - "date" : Resources are sorted in reverse chronological order based on the
   * date they were created.
   * - "rating" : Resources are sorted from highest to lowest rating.
   * - "relevance" : Resources are sorted based on their relevance to the search
   * query. This is the default value for this parameter.
   * - "title" : Resources are sorted alphabetically by title.
   * - "videoCount" : Channels are sorted in descending order of their number of
   * uploaded videos.
   * - "viewCount" : Resources are sorted from highest to lowest number of
   * views.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * [publishedAfter] - The publishedAfter parameter indicates that the API
   * response should only contain resources created after the specified time.
   * The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
   *
   * [publishedBefore] - The publishedBefore parameter indicates that the API
   * response should only contain resources created before the specified time.
   * The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
   *
   * [q] - The q parameter specifies the query term to search for.
   *
   * [regionCode] - The regionCode parameter instructs the API to return search
   * results for the specified country. The parameter value is an ISO 3166-1
   * alpha-2 country code.
   *
   * [relatedToVideoId] - The relatedToVideoId parameter retrieves a list of
   * videos that are related to the video that the parameter value identifies.
   * The parameter value must be set to a YouTube video ID and, if you are using
   * this parameter, the type parameter must be set to video.
   *
   * [safeSearch] - The safeSearch parameter indicates whether the search
   * results should include restricted content as well as standard content.
   * Possible string values are:
   * - "moderate" : YouTube will filter some content from search results and, at
   * the least, will filter content that is restricted in your locale. Based on
   * their content, search results could be removed from search results or
   * demoted in search results. This is the default parameter value.
   * - "none" : YouTube will not filter the search result set.
   * - "strict" : YouTube will try to exclude all restricted content from the
   * search result set. Based on their content, search results could be removed
   * from search results or demoted in search results.
   *
   * [topicId] - The topicId parameter indicates that the API response should
   * only contain resources associated with the specified topic. The value
   * identifies a Freebase topic ID.
   *
   * [type] - The type parameter restricts a search query to only retrieve a
   * particular type of resource. The value is a comma-separated list of
   * resource types.
   *
   * [videoCaption] - The videoCaption parameter indicates whether the API
   * should filter video search results based on whether they have captions.
   * Possible string values are:
   * - "any" : Do not filter results based on caption availability.
   * - "closedCaption" : Only include videos that have captions.
   * - "none" : Only include videos that do not have captions.
   *
   * [videoCategoryId] - The videoCategoryId parameter filters video search
   * results based on their category.
   *
   * [videoDefinition] - The videoDefinition parameter lets you restrict a
   * search to only include either high definition (HD) or standard definition
   * (SD) videos. HD videos are available for playback in at least 720p, though
   * higher resolutions, like 1080p, might also be available.
   * Possible string values are:
   * - "any" : Return all videos, regardless of their resolution.
   * - "high" : Only retrieve HD videos.
   * - "standard" : Only retrieve videos in standard definition.
   *
   * [videoDimension] - The videoDimension parameter lets you restrict a search
   * to only retrieve 2D or 3D videos.
   * Possible string values are:
   * - "2d" : Restrict search results to exclude 3D videos.
   * - "3d" : Restrict search results to only include 3D videos.
   * - "any" : Include both 3D and non-3D videos in returned results. This is
   * the default value.
   *
   * [videoDuration] - The videoDuration parameter filters video search results
   * based on their duration.
   * Possible string values are:
   * - "any" : Do not filter video search results based on their duration. This
   * is the default value.
   * - "long" : Only include videos longer than 20 minutes.
   * - "medium" : Only include videos that are between four and 20 minutes long
   * (inclusive).
   * - "short" : Only include videos that are less than four minutes long.
   *
   * [videoEmbeddable] - The videoEmbeddable parameter lets you to restrict a
   * search to only videos that can be embedded into a webpage.
   * Possible string values are:
   * - "any" : Return all videos, embeddable or not.
   * - "true" : Only retrieve embeddable videos.
   *
   * [videoLicense] - The videoLicense parameter filters search results to only
   * include videos with a particular license. YouTube lets video uploaders
   * choose to attach either the Creative Commons license or the standard
   * YouTube license to each of their videos.
   * Possible string values are:
   * - "any" : Return all videos, regardless of which license they have, that
   * match the query parameters.
   * - "creativeCommon" : Only return videos that have a Creative Commons
   * license. Users can reuse videos with this license in other videos that they
   * create. Learn more.
   * - "youtube" : Only return videos that have the standard YouTube license.
   *
   * [videoSyndicated] - The videoSyndicated parameter lets you to restrict a
   * search to only videos that can be played outside youtube.com.
   * Possible string values are:
   * - "any" : Return all videos, syndicated or not.
   * - "true" : Only retrieve syndicated videos.
   *
   * [videoType] - The videoType parameter lets you restrict a search to a
   * particular type of videos.
   * Possible string values are:
   * - "any" : Return all videos.
   * - "episode" : Only retrieve episodes of shows.
   * - "movie" : Only retrieve movies.
   *
   * Completes with a [SearchListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchListResponse> list(core.String part, {core.String channelId, core.String channelType, core.String eventType, core.bool forContentOwner, core.bool forMine, core.String location, core.String locationRadius, core.int maxResults, core.String onBehalfOfContentOwner, core.String order, core.String pageToken, core.DateTime publishedAfter, core.DateTime publishedBefore, core.String q, core.String regionCode, core.String relatedToVideoId, core.String safeSearch, core.String topicId, core.String type, core.String videoCaption, core.String videoCategoryId, core.String videoDefinition, core.String videoDimension, core.String videoDuration, core.String videoEmbeddable, core.String videoLicense, core.String videoSyndicated, core.String videoType}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (channelId != null) {
      _queryParams["channelId"] = [channelId];
    }
    if (channelType != null) {
      _queryParams["channelType"] = [channelType];
    }
    if (eventType != null) {
      _queryParams["eventType"] = [eventType];
    }
    if (forContentOwner != null) {
      _queryParams["forContentOwner"] = ["${forContentOwner}"];
    }
    if (forMine != null) {
      _queryParams["forMine"] = ["${forMine}"];
    }
    if (location != null) {
      _queryParams["location"] = [location];
    }
    if (locationRadius != null) {
      _queryParams["locationRadius"] = [locationRadius];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (order != null) {
      _queryParams["order"] = [order];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (publishedAfter != null) {
      _queryParams["publishedAfter"] = [(publishedAfter).toIso8601String()];
    }
    if (publishedBefore != null) {
      _queryParams["publishedBefore"] = [(publishedBefore).toIso8601String()];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if (regionCode != null) {
      _queryParams["regionCode"] = [regionCode];
    }
    if (relatedToVideoId != null) {
      _queryParams["relatedToVideoId"] = [relatedToVideoId];
    }
    if (safeSearch != null) {
      _queryParams["safeSearch"] = [safeSearch];
    }
    if (topicId != null) {
      _queryParams["topicId"] = [topicId];
    }
    if (type != null) {
      _queryParams["type"] = [type];
    }
    if (videoCaption != null) {
      _queryParams["videoCaption"] = [videoCaption];
    }
    if (videoCategoryId != null) {
      _queryParams["videoCategoryId"] = [videoCategoryId];
    }
    if (videoDefinition != null) {
      _queryParams["videoDefinition"] = [videoDefinition];
    }
    if (videoDimension != null) {
      _queryParams["videoDimension"] = [videoDimension];
    }
    if (videoDuration != null) {
      _queryParams["videoDuration"] = [videoDuration];
    }
    if (videoEmbeddable != null) {
      _queryParams["videoEmbeddable"] = [videoEmbeddable];
    }
    if (videoLicense != null) {
      _queryParams["videoLicense"] = [videoLicense];
    }
    if (videoSyndicated != null) {
      _queryParams["videoSyndicated"] = [videoSyndicated];
    }
    if (videoType != null) {
      _queryParams["videoType"] = [videoType];
    }


    _url = 'search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class SubscriptionsResourceApi {
  final common_internal.ApiRequester _requester;

  SubscriptionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a subscription.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube subscription ID for the
   * resource that is being deleted. In a subscription resource, the id property
   * specifies the YouTube subscription ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];

    _downloadOptions = null;

    _url = 'subscriptions';

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
   * Adds a subscription for the authenticated user's channel.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet and
   * contentDetails.
   *
   * Completes with a [Subscription].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Subscription> insert(Subscription request, core.String part) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];


    _url = 'subscriptions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Returns subscription resources that match the API request criteria.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * subscription resource properties that the API response will include. The
   * part names that you can include in the parameter value are id, snippet, and
   * contentDetails.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a
   * subscription resource, the snippet property contains other properties, such
   * as a display title for the subscription. If you set part=snippet, the API
   * response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID. The
   * API will only return that channel's subscriptions.
   *
   * [forChannelId] - The forChannelId parameter specifies a comma-separated
   * list of channel IDs. The API response will then only contain subscriptions
   * matching those channels.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * subscription ID(s) for the resource(s) that are being retrieved. In a
   * subscription resource, the id property specifies the YouTube subscription
   * ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   * Value must be between "0" and "50".
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the
   * authenticated user's subscriptions.
   *
   * [mySubscribers] - Set this parameter's value to true to retrieve a feed of
   * the subscribers of the authenticated user.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [order] - The order parameter specifies the method that will be used to
   * sort resources in the API response.
   * Possible string values are:
   * - "alphabetical" : Sort alphabetically.
   * - "relevance" : Sort by relevance.
   * - "unread" : Sort by order of activity.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Completes with a [SubscriptionListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SubscriptionListResponse> list(core.String part, {core.String channelId, core.String forChannelId, core.String id, core.int maxResults, core.bool mine, core.bool mySubscribers, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String order, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (channelId != null) {
      _queryParams["channelId"] = [channelId];
    }
    if (forChannelId != null) {
      _queryParams["forChannelId"] = [forChannelId];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (mine != null) {
      _queryParams["mine"] = ["${mine}"];
    }
    if (mySubscribers != null) {
      _queryParams["mySubscribers"] = ["${mySubscribers}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (order != null) {
      _queryParams["order"] = [order];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'subscriptions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SubscriptionListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ThumbnailsResourceApi {
  final common_internal.ApiRequester _requester;

  ThumbnailsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Uploads a custom video thumbnail to YouTube and sets it for a video.
   *
   * Request parameters:
   *
   * [videoId] - The videoId parameter specifies a YouTube video ID for which
   * the custom video thumbnail is being provided.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates
   * that the authenticated user is acting on behalf of the content owner
   * specified in the parameter value. This parameter is intended for YouTube
   * content partners that own and manage many different YouTube channels. It
   * allows content owners to authenticate once and get access to all their
   * video and channel data, without having to provide authentication
   * credentials for each individual channel. The actual CMS account that the
   * user authenticates with needs to be linked to the specified YouTube content
   * owner.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [ThumbnailSetResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ThumbnailSetResponse> set(core.String videoId, {core.String onBehalfOfContentOwner, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (videoId == null) {
      throw new core.ArgumentError("Parameter videoId is required.");
    }
    _queryParams["videoId"] = [videoId];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = 'thumbnails/set';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/thumbnails/set';
    } else {
      _url = '/upload/youtube/v3/thumbnails/set';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ThumbnailSetResponse.fromJson(data));
  }

}


/** Not documented yet. */
class VideoCategoriesResourceApi {
  final common_internal.ApiRequester _requester;

  VideoCategoriesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a list of categories that can be associated with YouTube videos.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies the videoCategory resource parts that
   * the API response will include. Supported values are id and snippet.
   *
   * [hl] - The hl parameter specifies the language that should be used for text
   * values in the API response.
   *
   * [id] - The id parameter specifies a comma-separated list of video category
   * IDs for the resources that you are retrieving.
   *
   * [regionCode] - The regionCode parameter instructs the API to return the
   * list of video categories available in the specified country. The parameter
   * value is an ISO 3166-1 alpha-2 country code.
   *
   * Completes with a [VideoCategoryListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VideoCategoryListResponse> list(core.String part, {core.String hl, core.String id, core.String regionCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (regionCode != null) {
      _queryParams["regionCode"] = [regionCode];
    }


    _url = 'videoCategories';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VideoCategoryListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class VideosResourceApi {
  final common_internal.ApiRequester _requester;

  VideosResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a YouTube video.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube video ID for the resource
   * that is being deleted. In a video resource, the id property specifies the
   * video's ID.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The actual
   * CMS account that the user authenticates with must be linked to the
   * specified YouTube content owner.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _downloadOptions = null;

    _url = 'videos';

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
   * Retrieves the ratings that the authorized user gave to a list of specified
   * videos.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * video ID(s) for the resource(s) for which you are retrieving rating data.
   * In a video resource, the id property specifies the video's ID.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [VideoGetRatingResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VideoGetRatingResponse> getRating(core.String id, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'videos/getRating';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VideoGetRatingResponse.fromJson(data));
  }

  /**
   * Uploads a video to YouTube and optionally sets the video's metadata.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet,
   * contentDetails, fileDetails, liveStreamingDetails, player,
   * processingDetails, recordingDetails, statistics, status, suggestions, and
   * topicDetails. However, not all of those parts contain properties that can
   * be set when setting or updating a video's metadata. For example, the
   * statistics object encapsulates statistics that YouTube calculates for a
   * video and does not contain values that you can set or modify. If the
   * parameter value specifies a part that does not contain mutable values, that
   * part will still be included in the API response.
   *
   * [autoLevels] - The autoLevels parameter indicates whether YouTube should
   * automatically enhance the video's lighting and color.
   *
   * [notifySubscribers] - The notifySubscribers parameter indicates whether
   * YouTube should send notification to subscribers about the inserted video.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a
   * properly authorized request. Note: This parameter is intended exclusively
   * for YouTube content partners.
   *
   * The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel
   * ID of the channel to which a video is being added. This parameter is
   * required when a request specifies a value for the onBehalfOfContentOwner
   * parameter, and it can only be used in conjunction with that parameter. In
   * addition, the request must be authorized using a CMS account that is linked
   * to the content owner that the onBehalfOfContentOwner parameter specifies.
   * Finally, the channel that the onBehalfOfContentOwnerChannel parameter value
   * specifies must be linked to the content owner that the
   * onBehalfOfContentOwner parameter specifies.
   *
   * This parameter is intended for YouTube content partners that own and manage
   * many different YouTube channels. It allows content owners to authenticate
   * once and perform actions on behalf of the channel specified in the
   * parameter value, without having to provide authentication credentials for
   * each separate channel.
   *
   * [stabilize] - The stabilize parameter indicates whether YouTube should
   * adjust the video to remove shaky camera motions.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Video].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Video> insert(Video request, core.String part, {core.bool autoLevels, core.bool notifySubscribers, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.bool stabilize, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (autoLevels != null) {
      _queryParams["autoLevels"] = ["${autoLevels}"];
    }
    if (notifySubscribers != null) {
      _queryParams["notifySubscribers"] = ["${notifySubscribers}"];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (onBehalfOfContentOwnerChannel != null) {
      _queryParams["onBehalfOfContentOwnerChannel"] = [onBehalfOfContentOwnerChannel];
    }
    if (stabilize != null) {
      _queryParams["stabilize"] = ["${stabilize}"];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = 'videos';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/videos';
    } else {
      _url = '/upload/youtube/v3/videos';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Video.fromJson(data));
  }

  /**
   * Returns a list of videos that match the API request parameters.
   *
   * Request parameters:
   *
   * [part] - The part parameter specifies a comma-separated list of one or more
   * video resource properties that the API response will include. The part
   * names that you can include in the parameter value are id, snippet,
   * contentDetails, fileDetails, liveStreamingDetails, player,
   * processingDetails, recordingDetails, statistics, status, suggestions, and
   * topicDetails.
   *
   * If the parameter identifies a property that contains child properties, the
   * child properties will be included in the response. For example, in a video
   * resource, the snippet property contains the channelId, title, description,
   * tags, and categoryId properties. As such, if you set part=snippet, the API
   * response will contain all of those properties.
   *
   * [chart] - The chart parameter identifies the chart that you want to
   * retrieve.
   * Possible string values are:
   * - "mostPopular" : Return the most popular videos for the specified content
   * region and video category.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube
   * video ID(s) for the resource(s) that are being retrieved. In a video
   * resource, the id property specifies the video's ID.
   *
   * [locale] - DEPRECATED
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of
   * items that should be returned in the result set.
   *
   * Note: This parameter is supported for use in conjunction with the myRating
   * parameter, but it is not supported for use in conjunction with the id
   * parameter.
   * Value must be between "1" and "50".
   *
   * [myRating] - Set this parameter's value to like or dislike to instruct the
   * API to only return videos liked or disliked by the authenticated user.
   * Possible string values are:
   * - "dislike" : Returns only videos disliked by the authenticated user.
   * - "like" : Returns only video liked by the authenticated user.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the
   * result set that should be returned. In an API response, the nextPageToken
   * and prevPageToken properties identify other pages that could be retrieved.
   *
   * Note: This parameter is supported for use in conjunction with the myRating
   * parameter, but it is not supported for use in conjunction with the id
   * parameter.
   *
   * [regionCode] - The regionCode parameter instructs the API to select a video
   * chart available in the specified region. This parameter can only be used in
   * conjunction with the chart parameter. The parameter value is an ISO 3166-1
   * alpha-2 country code.
   *
   * [videoCategoryId] - The videoCategoryId parameter identifies the video
   * category for which the chart should be retrieved. This parameter can only
   * be used in conjunction with the chart parameter. By default, charts are not
   * restricted to a particular category.
   *
   * Completes with a [VideoListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VideoListResponse> list(core.String part, {core.String chart, core.String id, core.String locale, core.int maxResults, core.String myRating, core.String onBehalfOfContentOwner, core.String pageToken, core.String regionCode, core.String videoCategoryId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (chart != null) {
      _queryParams["chart"] = [chart];
    }
    if (id != null) {
      _queryParams["id"] = [id];
    }
    if (locale != null) {
      _queryParams["locale"] = [locale];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (myRating != null) {
      _queryParams["myRating"] = [myRating];
    }
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (regionCode != null) {
      _queryParams["regionCode"] = [regionCode];
    }
    if (videoCategoryId != null) {
      _queryParams["videoCategoryId"] = [videoCategoryId];
    }


    _url = 'videos';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VideoListResponse.fromJson(data));
  }

  /**
   * Add a like or dislike rating to a video or remove a rating from a video.
   *
   * Request parameters:
   *
   * [id] - The id parameter specifies the YouTube video ID of the video that is
   * being rated or having its rating removed.
   *
   * [rating] - Specifies the rating to record.
   * Possible string values are:
   * - "dislike" : Records that the authenticated user disliked the video.
   * - "like" : Records that the authenticated user liked the video.
   * - "none" : Removes any rating that the authenticated user had previously
   * set for the video.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The CMS
   * account that the user authenticates with must be linked to the specified
   * YouTube content owner.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future rate(core.String id, core.String rating, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    _queryParams["id"] = [id];
    if (rating == null) {
      throw new core.ArgumentError("Parameter rating is required.");
    }
    _queryParams["rating"] = [rating];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _downloadOptions = null;

    _url = 'videos/rate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Updates a video's metadata.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [part] - The part parameter serves two purposes in this operation. It
   * identifies the properties that the write operation will set as well as the
   * properties that the API response will include.
   *
   * The part names that you can include in the parameter value are snippet,
   * contentDetails, fileDetails, liveStreamingDetails, player,
   * processingDetails, recordingDetails, statistics, status, suggestions, and
   * topicDetails.
   *
   * Note that this method will override the existing values for all of the
   * mutable properties that are contained in any parts that the parameter value
   * specifies. For example, a video's privacy setting is contained in the
   * status part. As such, if your request is updating a private video, and the
   * request's part parameter value includes the status part, the video's
   * privacy setting will be updated to whatever value the request body
   * specifies. If the request body does not specify a value, the existing
   * privacy setting will be removed and the video will revert to the default
   * privacy setting.
   *
   * In addition, not all of those parts contain properties that can be set when
   * setting or updating a video's metadata. For example, the statistics object
   * encapsulates statistics that YouTube calculates for a video and does not
   * contain values that you can set or modify. If the parameter value specifies
   * a part that does not contain mutable values, that part will still be
   * included in the API response.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for
   * YouTube content partners.
   *
   * The onBehalfOfContentOwner parameter indicates that the request's
   * authorization credentials identify a YouTube CMS user who is acting on
   * behalf of the content owner specified in the parameter value. This
   * parameter is intended for YouTube content partners that own and manage many
   * different YouTube channels. It allows content owners to authenticate once
   * and get access to all their video and channel data, without having to
   * provide authentication credentials for each individual channel. The actual
   * CMS account that the user authenticates with must be linked to the
   * specified YouTube content owner.
   *
   * Completes with a [Video].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Video> update(Video request, core.String part, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (part == null) {
      throw new core.ArgumentError("Parameter part is required.");
    }
    _queryParams["part"] = [part];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }


    _url = 'videos';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Video.fromJson(data));
  }

}


/** Not documented yet. */
class WatermarksResourceApi {
  final common_internal.ApiRequester _requester;

  WatermarksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Uploads a watermark image to YouTube and sets it for a channel.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID for
   * which the watermark is being provided.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates
   * that the authenticated user is acting on behalf of the content owner
   * specified in the parameter value. This parameter is intended for YouTube
   * content partners that own and manage many different YouTube channels. It
   * allows content owners to authenticate once and get access to all their
   * video and channel data, without having to provide authentication
   * credentials for each individual channel. The actual CMS account that the
   * user authenticates with needs to be linked to the specified YouTube content
   * owner.
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
  async.Future set(InvideoBranding request, core.String channelId, {core.String onBehalfOfContentOwner, common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (channelId == null) {
      throw new core.ArgumentError("Parameter channelId is required.");
    }
    _queryParams["channelId"] = [channelId];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;
    _downloadOptions = null;

    if (_uploadMedia == null) {
      _url = 'watermarks/set';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/youtube/v3/watermarks/set';
    } else {
      _url = '/upload/youtube/v3/watermarks/set';
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

  /**
   * Deletes a watermark.
   *
   * Request parameters:
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID for
   * which the watermark is being unset.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates
   * that the authenticated user is acting on behalf of the content owner
   * specified in the parameter value. This parameter is intended for YouTube
   * content partners that own and manage many different YouTube channels. It
   * allows content owners to authenticate once and get access to all their
   * video and channel data, without having to provide authentication
   * credentials for each individual channel. The actual CMS account that the
   * user authenticates with needs to be linked to the specified YouTube content
   * owner.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future unset(core.String channelId, {core.String onBehalfOfContentOwner}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (channelId == null) {
      throw new core.ArgumentError("Parameter channelId is required.");
    }
    _queryParams["channelId"] = [channelId];
    if (onBehalfOfContentOwner != null) {
      _queryParams["onBehalfOfContentOwner"] = [onBehalfOfContentOwner];
    }

    _downloadOptions = null;

    _url = 'watermarks/unset';

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



/** Rights management policy for YouTube resources. */
class AccessPolicy {
  /**
   * The value of allowed indicates whether the access to the policy is allowed
   * or denied by default.
   */
  core.bool allowed;

  /**
   * A list of region codes that identify countries where the default policy do
   * not apply.
   */
  core.List<core.String> exception;


  AccessPolicy();

  AccessPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("allowed")) {
      allowed = _json["allowed"];
    }
    if (_json.containsKey("exception")) {
      exception = _json["exception"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowed != null) {
      _json["allowed"] = allowed;
    }
    if (exception != null) {
      _json["exception"] = exception;
    }
    return _json;
  }
}


/**
 * An activity resource contains information about an action that a particular
 * channel, or user, has taken on YouTube.The actions reported in activity feeds
 * include rating a video, sharing a video, marking a video as a favorite,
 * commenting on a video, uploading a video, and so forth. Each activity
 * resource identifies the type of action, the channel associated with the
 * action, and the resource(s) associated with the action, such as the video
 * that was rated or uploaded.
 */
class Activity {
  /**
   * The contentDetails object contains information about the content associated
   * with the activity. For example, if the snippet.type value is videoRated,
   * then the contentDetails object's content identifies the rated video.
   */
  ActivityContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the activity. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#activity".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the activity, including the
   * activity's type and group ID.
   */
  ActivitySnippet snippet;


  Activity();

  Activity.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new ActivityContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new ActivitySnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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


/**
 * Details about the content of an activity: the video that was shared, the
 * channel that was subscribed to, etc.
 */
class ActivityContentDetails {
  /**
   * The bulletin object contains details about a channel bulletin post. This
   * object is only present if the snippet.type is bulletin.
   */
  ActivityContentDetailsBulletin bulletin;

  /**
   * The channelItem object contains details about a resource which was added to
   * a channel. This property is only present if the snippet.type is
   * channelItem.
   */
  ActivityContentDetailsChannelItem channelItem;

  /**
   * The comment object contains information about a resource that received a
   * comment. This property is only present if the snippet.type is comment.
   */
  ActivityContentDetailsComment comment;

  /**
   * The favorite object contains information about a video that was marked as a
   * favorite video. This property is only present if the snippet.type is
   * favorite.
   */
  ActivityContentDetailsFavorite favorite;

  /**
   * The like object contains information about a resource that received a
   * positive (like) rating. This property is only present if the snippet.type
   * is like.
   */
  ActivityContentDetailsLike like;

  /**
   * The playlistItem object contains information about a new playlist item.
   * This property is only present if the snippet.type is playlistItem.
   */
  ActivityContentDetailsPlaylistItem playlistItem;

  /**
   * The promotedItem object contains details about a resource which is being
   * promoted. This property is only present if the snippet.type is
   * promotedItem.
   */
  ActivityContentDetailsPromotedItem promotedItem;

  /**
   * The recommendation object contains information about a recommended
   * resource. This property is only present if the snippet.type is
   * recommendation.
   */
  ActivityContentDetailsRecommendation recommendation;

  /**
   * The social object contains details about a social network post. This
   * property is only present if the snippet.type is social.
   */
  ActivityContentDetailsSocial social;

  /**
   * The subscription object contains information about a channel that a user
   * subscribed to. This property is only present if the snippet.type is
   * subscription.
   */
  ActivityContentDetailsSubscription subscription;

  /**
   * The upload object contains information about the uploaded video. This
   * property is only present if the snippet.type is upload.
   */
  ActivityContentDetailsUpload upload;


  ActivityContentDetails();

  ActivityContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("bulletin")) {
      bulletin = new ActivityContentDetailsBulletin.fromJson(_json["bulletin"]);
    }
    if (_json.containsKey("channelItem")) {
      channelItem = new ActivityContentDetailsChannelItem.fromJson(_json["channelItem"]);
    }
    if (_json.containsKey("comment")) {
      comment = new ActivityContentDetailsComment.fromJson(_json["comment"]);
    }
    if (_json.containsKey("favorite")) {
      favorite = new ActivityContentDetailsFavorite.fromJson(_json["favorite"]);
    }
    if (_json.containsKey("like")) {
      like = new ActivityContentDetailsLike.fromJson(_json["like"]);
    }
    if (_json.containsKey("playlistItem")) {
      playlistItem = new ActivityContentDetailsPlaylistItem.fromJson(_json["playlistItem"]);
    }
    if (_json.containsKey("promotedItem")) {
      promotedItem = new ActivityContentDetailsPromotedItem.fromJson(_json["promotedItem"]);
    }
    if (_json.containsKey("recommendation")) {
      recommendation = new ActivityContentDetailsRecommendation.fromJson(_json["recommendation"]);
    }
    if (_json.containsKey("social")) {
      social = new ActivityContentDetailsSocial.fromJson(_json["social"]);
    }
    if (_json.containsKey("subscription")) {
      subscription = new ActivityContentDetailsSubscription.fromJson(_json["subscription"]);
    }
    if (_json.containsKey("upload")) {
      upload = new ActivityContentDetailsUpload.fromJson(_json["upload"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bulletin != null) {
      _json["bulletin"] = (bulletin).toJson();
    }
    if (channelItem != null) {
      _json["channelItem"] = (channelItem).toJson();
    }
    if (comment != null) {
      _json["comment"] = (comment).toJson();
    }
    if (favorite != null) {
      _json["favorite"] = (favorite).toJson();
    }
    if (like != null) {
      _json["like"] = (like).toJson();
    }
    if (playlistItem != null) {
      _json["playlistItem"] = (playlistItem).toJson();
    }
    if (promotedItem != null) {
      _json["promotedItem"] = (promotedItem).toJson();
    }
    if (recommendation != null) {
      _json["recommendation"] = (recommendation).toJson();
    }
    if (social != null) {
      _json["social"] = (social).toJson();
    }
    if (subscription != null) {
      _json["subscription"] = (subscription).toJson();
    }
    if (upload != null) {
      _json["upload"] = (upload).toJson();
    }
    return _json;
  }
}


/** Details about a channel bulletin post. */
class ActivityContentDetailsBulletin {
  /**
   * The resourceId object contains information that identifies the resource
   * associated with a bulletin post.
   */
  ResourceId resourceId;


  ActivityContentDetailsBulletin();

  ActivityContentDetailsBulletin.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Details about a resource which was added to a channel. */
class ActivityContentDetailsChannelItem {
  /**
   * The resourceId object contains information that identifies the resource
   * that was added to the channel.
   */
  ResourceId resourceId;


  ActivityContentDetailsChannelItem();

  ActivityContentDetailsChannelItem.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Information about a resource that received a comment. */
class ActivityContentDetailsComment {
  /**
   * The resourceId object contains information that identifies the resource
   * associated with the comment.
   */
  ResourceId resourceId;


  ActivityContentDetailsComment();

  ActivityContentDetailsComment.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Information about a video that was marked as a favorite video. */
class ActivityContentDetailsFavorite {
  /**
   * The resourceId object contains information that identifies the resource
   * that was marked as a favorite.
   */
  ResourceId resourceId;


  ActivityContentDetailsFavorite();

  ActivityContentDetailsFavorite.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Information about a resource that received a positive (like) rating. */
class ActivityContentDetailsLike {
  /**
   * The resourceId object contains information that identifies the rated
   * resource.
   */
  ResourceId resourceId;


  ActivityContentDetailsLike();

  ActivityContentDetailsLike.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Information about a new playlist item. */
class ActivityContentDetailsPlaylistItem {
  /** The value that YouTube uses to uniquely identify the playlist. */
  core.String playlistId;

  /** ID of the item within the playlist. */
  core.String playlistItemId;

  /**
   * The resourceId object contains information about the resource that was
   * added to the playlist.
   */
  ResourceId resourceId;


  ActivityContentDetailsPlaylistItem();

  ActivityContentDetailsPlaylistItem.fromJson(core.Map _json) {
    if (_json.containsKey("playlistId")) {
      playlistId = _json["playlistId"];
    }
    if (_json.containsKey("playlistItemId")) {
      playlistItemId = _json["playlistItemId"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (playlistId != null) {
      _json["playlistId"] = playlistId;
    }
    if (playlistItemId != null) {
      _json["playlistItemId"] = playlistItemId;
    }
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Details about a resource which is being promoted. */
class ActivityContentDetailsPromotedItem {
  /** The URL the client should fetch to request a promoted item. */
  core.String adTag;

  /**
   * The URL the client should ping to indicate that the user clicked through on
   * this promoted item.
   */
  core.String clickTrackingUrl;

  /**
   * The URL the client should ping to indicate that the user was shown this
   * promoted item.
   */
  core.String creativeViewUrl;

  /**
   * The type of call-to-action, a message to the user indicating action that
   * can be taken.
   * Possible string values are:
   * - "unspecified"
   * - "visitAdvertiserSite"
   */
  core.String ctaType;

  /**
   * The custom call-to-action button text. If specified, it will override the
   * default button text for the cta_type.
   */
  core.String customCtaButtonText;

  /** The text description to accompany the promoted item. */
  core.String descriptionText;

  /**
   * The URL the client should direct the user to, if the user chooses to visit
   * the advertiser's website.
   */
  core.String destinationUrl;

  /**
   * The list of forecasting URLs. The client should ping all of these URLs when
   * a promoted item is not available, to indicate that a promoted item could
   * have been shown.
   */
  core.List<core.String> forecastingUrl;

  /**
   * The list of impression URLs. The client should ping all of these URLs to
   * indicate that the user was shown this promoted item.
   */
  core.List<core.String> impressionUrl;

  /** The ID that YouTube uses to uniquely identify the promoted video. */
  core.String videoId;


  ActivityContentDetailsPromotedItem();

  ActivityContentDetailsPromotedItem.fromJson(core.Map _json) {
    if (_json.containsKey("adTag")) {
      adTag = _json["adTag"];
    }
    if (_json.containsKey("clickTrackingUrl")) {
      clickTrackingUrl = _json["clickTrackingUrl"];
    }
    if (_json.containsKey("creativeViewUrl")) {
      creativeViewUrl = _json["creativeViewUrl"];
    }
    if (_json.containsKey("ctaType")) {
      ctaType = _json["ctaType"];
    }
    if (_json.containsKey("customCtaButtonText")) {
      customCtaButtonText = _json["customCtaButtonText"];
    }
    if (_json.containsKey("descriptionText")) {
      descriptionText = _json["descriptionText"];
    }
    if (_json.containsKey("destinationUrl")) {
      destinationUrl = _json["destinationUrl"];
    }
    if (_json.containsKey("forecastingUrl")) {
      forecastingUrl = _json["forecastingUrl"];
    }
    if (_json.containsKey("impressionUrl")) {
      impressionUrl = _json["impressionUrl"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (adTag != null) {
      _json["adTag"] = adTag;
    }
    if (clickTrackingUrl != null) {
      _json["clickTrackingUrl"] = clickTrackingUrl;
    }
    if (creativeViewUrl != null) {
      _json["creativeViewUrl"] = creativeViewUrl;
    }
    if (ctaType != null) {
      _json["ctaType"] = ctaType;
    }
    if (customCtaButtonText != null) {
      _json["customCtaButtonText"] = customCtaButtonText;
    }
    if (descriptionText != null) {
      _json["descriptionText"] = descriptionText;
    }
    if (destinationUrl != null) {
      _json["destinationUrl"] = destinationUrl;
    }
    if (forecastingUrl != null) {
      _json["forecastingUrl"] = forecastingUrl;
    }
    if (impressionUrl != null) {
      _json["impressionUrl"] = impressionUrl;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}


/** Information that identifies the recommended resource. */
class ActivityContentDetailsRecommendation {
  /**
   * The reason that the resource is recommended to the user.
   * Possible string values are:
   * - "unspecified"
   * - "videoFavorited"
   * - "videoLiked"
   * - "videoWatched"
   */
  core.String reason;

  /**
   * The resourceId object contains information that identifies the recommended
   * resource.
   */
  ResourceId resourceId;

  /**
   * The seedResourceId object contains information about the resource that
   * caused the recommendation.
   */
  ResourceId seedResourceId;


  ActivityContentDetailsRecommendation();

  ActivityContentDetailsRecommendation.fromJson(core.Map _json) {
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
    if (_json.containsKey("seedResourceId")) {
      seedResourceId = new ResourceId.fromJson(_json["seedResourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (reason != null) {
      _json["reason"] = reason;
    }
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    if (seedResourceId != null) {
      _json["seedResourceId"] = (seedResourceId).toJson();
    }
    return _json;
  }
}


/** Details about a social network post. */
class ActivityContentDetailsSocial {
  /** The author of the social network post. */
  core.String author;

  /** An image of the post's author. */
  core.String imageUrl;

  /** The URL of the social network post. */
  core.String referenceUrl;

  /**
   * The resourceId object encapsulates information that identifies the resource
   * associated with a social network post.
   */
  ResourceId resourceId;

  /**
   * The name of the social network.
   * Possible string values are:
   * - "facebook"
   * - "googlePlus"
   * - "twitter"
   * - "unspecified"
   */
  core.String type;


  ActivityContentDetailsSocial();

  ActivityContentDetailsSocial.fromJson(core.Map _json) {
    if (_json.containsKey("author")) {
      author = _json["author"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("referenceUrl")) {
      referenceUrl = _json["referenceUrl"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (author != null) {
      _json["author"] = author;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (referenceUrl != null) {
      _json["referenceUrl"] = referenceUrl;
    }
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Information about a channel that a user subscribed to. */
class ActivityContentDetailsSubscription {
  /**
   * The resourceId object contains information that identifies the resource
   * that the user subscribed to.
   */
  ResourceId resourceId;


  ActivityContentDetailsSubscription();

  ActivityContentDetailsSubscription.fromJson(core.Map _json) {
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    return _json;
  }
}


/** Information about the uploaded video. */
class ActivityContentDetailsUpload {
  /** The ID that YouTube uses to uniquely identify the uploaded video. */
  core.String videoId;


  ActivityContentDetailsUpload();

  ActivityContentDetailsUpload.fromJson(core.Map _json) {
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}


/** Not documented yet. */
class ActivityListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of activities, or events, that match the request criteria. */
  core.List<Activity> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#activityListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  ActivityListResponse();

  ActivityListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Activity.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about an activity, including title, description, thumbnails,
 * activity type and group.
 */
class ActivitySnippet {
  /**
   * The ID that YouTube uses to uniquely identify the channel associated with
   * the activity.
   */
  core.String channelId;

  /** Channel title for the channel responsible for this activity */
  core.String channelTitle;

  /**
   * The description of the resource primarily associated with the activity.
   */
  core.String description;

  /**
   * The group ID associated with the activity. A group ID identifies user
   * events that are associated with the same user and resource. For example, if
   * a user rates a video and marks the same video as a favorite, the entries
   * for those events would have the same group ID in the user's activity feed.
   * In your user interface, you can avoid repetition by grouping events with
   * the same groupId value.
   */
  core.String groupId;

  /**
   * The date and time that the video was uploaded. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * A map of thumbnail images associated with the resource that is primarily
   * associated with the activity. For each object in the map, the key is the
   * name of the thumbnail image, and the value is an object that contains other
   * information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The title of the resource primarily associated with the activity. */
  core.String title;

  /**
   * The type of activity that the resource describes.
   * Possible string values are:
   * - "bulletin"
   * - "channelItem"
   * - "comment"
   * - "favorite"
   * - "like"
   * - "playlistItem"
   * - "promotedItem"
   * - "recommendation"
   * - "social"
   * - "subscription"
   * - "upload"
   */
  core.String type;


  ActivitySnippet();

  ActivitySnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("groupId")) {
      groupId = _json["groupId"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (groupId != null) {
      _json["groupId"] = groupId;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Brief description of the live stream cdn settings. */
class CdnSettings {
  /** The format of the video stream that you are sending to Youtube. */
  core.String format;

  /**
   * The ingestionInfo object contains information that YouTube provides that
   * you need to transmit your RTMP or HTTP stream to YouTube.
   */
  IngestionInfo ingestionInfo;

  /**
   * The method or protocol used to transmit the video stream.
   * Possible string values are:
   * - "rtmp"
   */
  core.String ingestionType;


  CdnSettings();

  CdnSettings.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("ingestionInfo")) {
      ingestionInfo = new IngestionInfo.fromJson(_json["ingestionInfo"]);
    }
    if (_json.containsKey("ingestionType")) {
      ingestionType = _json["ingestionType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (format != null) {
      _json["format"] = format;
    }
    if (ingestionInfo != null) {
      _json["ingestionInfo"] = (ingestionInfo).toJson();
    }
    if (ingestionType != null) {
      _json["ingestionType"] = ingestionType;
    }
    return _json;
  }
}


/** A channel resource contains information about a YouTube channel. */
class Channel {
  /**
   * The auditionDetails object encapsulates channel data that is relevant for
   * YouTube Partners during the audition process.
   */
  ChannelAuditDetails auditDetails;

  /**
   * The brandingSettings object encapsulates information about the branding of
   * the channel.
   */
  ChannelBrandingSettings brandingSettings;

  /**
   * The contentDetails object encapsulates information about the channel's
   * content.
   */
  ChannelContentDetails contentDetails;

  /**
   * The contentOwnerDetails object encapsulates channel data that is relevant
   * for YouTube Partners linked with the channel.
   */
  ChannelContentOwnerDetails contentOwnerDetails;

  /**
   * The conversionPings object encapsulates information about conversion pings
   * that need to be respected by the channel.
   */
  ChannelConversionPings conversionPings;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the channel. */
  core.String id;

  /**
   * The invideoPromotion object encapsulates information about promotion
   * campaign associated with the channel.
   */
  InvideoPromotion invideoPromotion;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#channel".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the channel, such as its
   * title, description, and thumbnail images.
   */
  ChannelSnippet snippet;

  /** The statistics object encapsulates statistics for the channel. */
  ChannelStatistics statistics;

  /**
   * The status object encapsulates information about the privacy status of the
   * channel.
   */
  ChannelStatus status;

  /**
   * The topicDetails object encapsulates information about Freebase topics
   * associated with the channel.
   */
  ChannelTopicDetails topicDetails;


  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("auditDetails")) {
      auditDetails = new ChannelAuditDetails.fromJson(_json["auditDetails"]);
    }
    if (_json.containsKey("brandingSettings")) {
      brandingSettings = new ChannelBrandingSettings.fromJson(_json["brandingSettings"]);
    }
    if (_json.containsKey("contentDetails")) {
      contentDetails = new ChannelContentDetails.fromJson(_json["contentDetails"]);
    }
    if (_json.containsKey("contentOwnerDetails")) {
      contentOwnerDetails = new ChannelContentOwnerDetails.fromJson(_json["contentOwnerDetails"]);
    }
    if (_json.containsKey("conversionPings")) {
      conversionPings = new ChannelConversionPings.fromJson(_json["conversionPings"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("invideoPromotion")) {
      invideoPromotion = new InvideoPromotion.fromJson(_json["invideoPromotion"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("snippet")) {
      snippet = new ChannelSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("statistics")) {
      statistics = new ChannelStatistics.fromJson(_json["statistics"]);
    }
    if (_json.containsKey("status")) {
      status = new ChannelStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("topicDetails")) {
      topicDetails = new ChannelTopicDetails.fromJson(_json["topicDetails"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (auditDetails != null) {
      _json["auditDetails"] = (auditDetails).toJson();
    }
    if (brandingSettings != null) {
      _json["brandingSettings"] = (brandingSettings).toJson();
    }
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
    }
    if (contentOwnerDetails != null) {
      _json["contentOwnerDetails"] = (contentOwnerDetails).toJson();
    }
    if (conversionPings != null) {
      _json["conversionPings"] = (conversionPings).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (invideoPromotion != null) {
      _json["invideoPromotion"] = (invideoPromotion).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (snippet != null) {
      _json["snippet"] = (snippet).toJson();
    }
    if (statistics != null) {
      _json["statistics"] = (statistics).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (topicDetails != null) {
      _json["topicDetails"] = (topicDetails).toJson();
    }
    return _json;
  }
}


/**
 * The auditDetails object encapsulates channel data that is relevant for
 * YouTube Partners during the audit process.
 */
class ChannelAuditDetails {
  /** Whether or not the channel respects the community guidelines. */
  core.bool communityGuidelinesGoodStanding;

  /** Whether or not the channel has any unresolved claims. */
  core.bool contentIdClaimsGoodStanding;

  /** Whether or not the channel has any copyright strikes. */
  core.bool copyrightStrikesGoodStanding;

  /**
   * Describes the general state of the channel. This field will always show if
   * there are any issues whatsoever with the channel. Currently this field
   * represents the result of the logical and operation over the community
   * guidelines good standing, the copyright strikes good standing and the
   * content ID claims good standing, but this may change in the future.
   */
  core.bool overallGoodStanding;


  ChannelAuditDetails();

  ChannelAuditDetails.fromJson(core.Map _json) {
    if (_json.containsKey("communityGuidelinesGoodStanding")) {
      communityGuidelinesGoodStanding = _json["communityGuidelinesGoodStanding"];
    }
    if (_json.containsKey("contentIdClaimsGoodStanding")) {
      contentIdClaimsGoodStanding = _json["contentIdClaimsGoodStanding"];
    }
    if (_json.containsKey("copyrightStrikesGoodStanding")) {
      copyrightStrikesGoodStanding = _json["copyrightStrikesGoodStanding"];
    }
    if (_json.containsKey("overallGoodStanding")) {
      overallGoodStanding = _json["overallGoodStanding"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (communityGuidelinesGoodStanding != null) {
      _json["communityGuidelinesGoodStanding"] = communityGuidelinesGoodStanding;
    }
    if (contentIdClaimsGoodStanding != null) {
      _json["contentIdClaimsGoodStanding"] = contentIdClaimsGoodStanding;
    }
    if (copyrightStrikesGoodStanding != null) {
      _json["copyrightStrikesGoodStanding"] = copyrightStrikesGoodStanding;
    }
    if (overallGoodStanding != null) {
      _json["overallGoodStanding"] = overallGoodStanding;
    }
    return _json;
  }
}


/**
 * A channel banner returned as the response to a channel_banner.insert call.
 */
class ChannelBannerResource {
  /** Etag of this resource. */
  core.String etag;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#channelBannerResource".
   */
  core.String kind;

  /** The URL of this banner image. */
  core.String url;


  ChannelBannerResource();

  ChannelBannerResource.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Branding properties of a YouTube channel. */
class ChannelBrandingSettings {
  /** Branding properties for the channel view. */
  ChannelSettings channel;

  /** Additional experimental branding properties. */
  core.List<PropertyValue> hints;

  /** Branding properties for branding images. */
  ImageSettings image;

  /** Branding properties for the watch page. */
  WatchSettings watch;


  ChannelBrandingSettings();

  ChannelBrandingSettings.fromJson(core.Map _json) {
    if (_json.containsKey("channel")) {
      channel = new ChannelSettings.fromJson(_json["channel"]);
    }
    if (_json.containsKey("hints")) {
      hints = _json["hints"].map((value) => new PropertyValue.fromJson(value)).toList();
    }
    if (_json.containsKey("image")) {
      image = new ImageSettings.fromJson(_json["image"]);
    }
    if (_json.containsKey("watch")) {
      watch = new WatchSettings.fromJson(_json["watch"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channel != null) {
      _json["channel"] = (channel).toJson();
    }
    if (hints != null) {
      _json["hints"] = hints.map((value) => (value).toJson()).toList();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (watch != null) {
      _json["watch"] = (watch).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class ChannelContentDetailsRelatedPlaylists {
  /**
   * The ID of the playlist that contains the channel"s favorite videos. Use the
   * playlistItems.insert and  playlistItems.delete to add or remove items from
   * that list.
   */
  core.String favorites;

  /**
   * The ID of the playlist that contains the channel"s liked videos. Use the
   * playlistItems.insert and  playlistItems.delete to add or remove items from
   * that list.
   */
  core.String likes;

  /**
   * The ID of the playlist that contains the channel"s uploaded videos. Use the
   * videos.insert method to upload new videos and the videos.delete method to
   * delete previously uploaded videos.
   */
  core.String uploads;

  /**
   * The ID of the playlist that contains the channel"s watch history. Use the
   * playlistItems.insert and  playlistItems.delete to add or remove items from
   * that list.
   */
  core.String watchHistory;

  /**
   * The ID of the playlist that contains the channel"s watch later playlist.
   * Use the playlistItems.insert and  playlistItems.delete to add or remove
   * items from that list.
   */
  core.String watchLater;


  ChannelContentDetailsRelatedPlaylists();

  ChannelContentDetailsRelatedPlaylists.fromJson(core.Map _json) {
    if (_json.containsKey("favorites")) {
      favorites = _json["favorites"];
    }
    if (_json.containsKey("likes")) {
      likes = _json["likes"];
    }
    if (_json.containsKey("uploads")) {
      uploads = _json["uploads"];
    }
    if (_json.containsKey("watchHistory")) {
      watchHistory = _json["watchHistory"];
    }
    if (_json.containsKey("watchLater")) {
      watchLater = _json["watchLater"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (favorites != null) {
      _json["favorites"] = favorites;
    }
    if (likes != null) {
      _json["likes"] = likes;
    }
    if (uploads != null) {
      _json["uploads"] = uploads;
    }
    if (watchHistory != null) {
      _json["watchHistory"] = watchHistory;
    }
    if (watchLater != null) {
      _json["watchLater"] = watchLater;
    }
    return _json;
  }
}


/** Details about the content of a channel. */
class ChannelContentDetails {
  /**
   * The googlePlusUserId object identifies the Google+ profile ID associated
   * with this channel.
   */
  core.String googlePlusUserId;

  /** Not documented yet. */
  ChannelContentDetailsRelatedPlaylists relatedPlaylists;


  ChannelContentDetails();

  ChannelContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("googlePlusUserId")) {
      googlePlusUserId = _json["googlePlusUserId"];
    }
    if (_json.containsKey("relatedPlaylists")) {
      relatedPlaylists = new ChannelContentDetailsRelatedPlaylists.fromJson(_json["relatedPlaylists"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (googlePlusUserId != null) {
      _json["googlePlusUserId"] = googlePlusUserId;
    }
    if (relatedPlaylists != null) {
      _json["relatedPlaylists"] = (relatedPlaylists).toJson();
    }
    return _json;
  }
}


/**
 * The contentOwnerDetails object encapsulates channel data that is relevant for
 * YouTube Partners linked with the channel.
 */
class ChannelContentOwnerDetails {
  /** The ID of the content owner linked to the channel. */
  core.String contentOwner;

  /**
   * The date and time of when the channel was linked to the content owner. The
   * value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime timeLinked;


  ChannelContentOwnerDetails();

  ChannelContentOwnerDetails.fromJson(core.Map _json) {
    if (_json.containsKey("contentOwner")) {
      contentOwner = _json["contentOwner"];
    }
    if (_json.containsKey("timeLinked")) {
      timeLinked = core.DateTime.parse(_json["timeLinked"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentOwner != null) {
      _json["contentOwner"] = contentOwner;
    }
    if (timeLinked != null) {
      _json["timeLinked"] = (timeLinked).toIso8601String();
    }
    return _json;
  }
}


/**
 * Pings that the app shall fire (authenticated by biscotti cookie). Each ping
 * has a context, in which the app must fire the ping, and a url identifying the
 * ping.
 */
class ChannelConversionPing {
  /**
   * Defines the context of the ping.
   * Possible string values are:
   * - "cview"
   * - "subscribe"
   * - "unsubscribe"
   */
  core.String context;

  /**
   * The url (without the schema) that the player shall send the ping to. It's
   * at caller's descretion to decide which schema to use (http vs https)
   * Example of a returned url: //googleads.g.doubleclick.net/pagead/
   * viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D
   * cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append
   * biscotti authentication (ms param in case of mobile, for example) to this
   * ping.
   */
  core.String conversionUrl;


  ChannelConversionPing();

  ChannelConversionPing.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("conversionUrl")) {
      conversionUrl = _json["conversionUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (context != null) {
      _json["context"] = context;
    }
    if (conversionUrl != null) {
      _json["conversionUrl"] = conversionUrl;
    }
    return _json;
  }
}


/**
 * The conversionPings object encapsulates information about conversion pings
 * that need to be respected by the channel.
 */
class ChannelConversionPings {
  /**
   * Pings that the app shall fire (authenticated by biscotti cookie). Each ping
   * has a context, in which the app must fire the ping, and a url identifying
   * the ping.
   */
  core.List<ChannelConversionPing> pings;


  ChannelConversionPings();

  ChannelConversionPings.fromJson(core.Map _json) {
    if (_json.containsKey("pings")) {
      pings = _json["pings"].map((value) => new ChannelConversionPing.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pings != null) {
      _json["pings"] = pings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ChannelListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of channels that match the request criteria. */
  core.List<Channel> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#channelListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  ChannelListResponse();

  ChannelListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Channel.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * TODO(lxz) follow up with adiamondstein@ to fullfill the doc before deploying
 */
class ChannelSection {
  /**
   * The contentDetails object contains details about the ChannelSection
   * content, such as playlists and channels.
   */
  ChannelSectionContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the ChannelSection. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#channelSection".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the ChannelSection, such as
   * its type, style and title.
   */
  ChannelSectionSnippet snippet;


  ChannelSection();

  ChannelSection.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new ChannelSectionContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new ChannelSectionSnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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


/** Details about a channelsection, including playlists and channels. */
class ChannelSectionContentDetails {
  /** The channel ids for type multiple_channels. */
  core.List<core.String> channels;

  /**
   * The playlist ids for type single_playlist and multiple_playlists. For
   * singlePlaylist, only one playlistId is allowed.
   */
  core.List<core.String> playlists;


  ChannelSectionContentDetails();

  ChannelSectionContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("channels")) {
      channels = _json["channels"];
    }
    if (_json.containsKey("playlists")) {
      playlists = _json["playlists"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channels != null) {
      _json["channels"] = channels;
    }
    if (playlists != null) {
      _json["playlists"] = playlists;
    }
    return _json;
  }
}


/** Not documented yet. */
class ChannelSectionListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of ChannelSections that match the request criteria. */
  core.List<ChannelSection> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#channelSectionListResponse".
   */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  ChannelSectionListResponse();

  ChannelSectionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ChannelSection.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about a channelsection, including title, style and position.
 */
class ChannelSectionSnippet {
  /**
   * The ID that YouTube uses to uniquely identify the channel that published
   * the channelSection.
   */
  core.String channelId;

  /** The position of the channelSection in the channel. */
  core.int position;

  /**
   * The style of the channelSection.
   * Possible string values are:
   * - "channelsectionStyleUndefined"
   * - "horizontalRow"
   * - "verticalList"
   */
  core.String style;

  /**
   * The channelSection's title for multiple_playlists and multiple_channels.
   */
  core.String title;

  /**
   * The type of the channelSection.
   * Possible string values are:
   * - "allPlaylists"
   * - "channelsectionTypeUndefined"
   * - "completedEvents"
   * - "likedPlaylists"
   * - "likes"
   * - "liveEvents"
   * - "multipleChannels"
   * - "multiplePlaylists"
   * - "popularUploads"
   * - "postedPlaylists"
   * - "postedVideos"
   * - "recentActivity"
   * - "recentPosts"
   * - "recentUploads"
   * - "singlePlaylist"
   * - "subscriptions"
   * - "upcomingEvents"
   */
  core.String type;


  ChannelSectionSnippet();

  ChannelSectionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("position")) {
      position = _json["position"];
    }
    if (_json.containsKey("style")) {
      style = _json["style"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (position != null) {
      _json["position"] = position;
    }
    if (style != null) {
      _json["style"] = style;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Branding properties for the channel view. */
class ChannelSettings {
  /** Which content tab users should see when viewing the channel. */
  core.String defaultTab;

  /** Specifies the channel description. */
  core.String description;

  /** Title for the featured channels tab. */
  core.String featuredChannelsTitle;

  /** The list of featured channels. */
  core.List<core.String> featuredChannelsUrls;

  /** Lists keywords associated with the channel, comma-separated. */
  core.String keywords;

  /**
   * Whether user-submitted comments left on the channel page need to be
   * approved by the channel owner to be publicly visible.
   */
  core.bool moderateComments;

  /** A prominent color that can be rendered on this channel page. */
  core.String profileColor;

  /** Whether the tab to browse the videos should be displayed. */
  core.bool showBrowseView;

  /** Whether related channels should be proposed. */
  core.bool showRelatedChannels;

  /** Specifies the channel title. */
  core.String title;

  /**
   * The ID for a Google Analytics account to track and measure traffic to the
   * channels.
   */
  core.String trackingAnalyticsAccountId;

  /** The trailer of the channel, for users that are not subscribers. */
  core.String unsubscribedTrailer;


  ChannelSettings();

  ChannelSettings.fromJson(core.Map _json) {
    if (_json.containsKey("defaultTab")) {
      defaultTab = _json["defaultTab"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("featuredChannelsTitle")) {
      featuredChannelsTitle = _json["featuredChannelsTitle"];
    }
    if (_json.containsKey("featuredChannelsUrls")) {
      featuredChannelsUrls = _json["featuredChannelsUrls"];
    }
    if (_json.containsKey("keywords")) {
      keywords = _json["keywords"];
    }
    if (_json.containsKey("moderateComments")) {
      moderateComments = _json["moderateComments"];
    }
    if (_json.containsKey("profileColor")) {
      profileColor = _json["profileColor"];
    }
    if (_json.containsKey("showBrowseView")) {
      showBrowseView = _json["showBrowseView"];
    }
    if (_json.containsKey("showRelatedChannels")) {
      showRelatedChannels = _json["showRelatedChannels"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("trackingAnalyticsAccountId")) {
      trackingAnalyticsAccountId = _json["trackingAnalyticsAccountId"];
    }
    if (_json.containsKey("unsubscribedTrailer")) {
      unsubscribedTrailer = _json["unsubscribedTrailer"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultTab != null) {
      _json["defaultTab"] = defaultTab;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (featuredChannelsTitle != null) {
      _json["featuredChannelsTitle"] = featuredChannelsTitle;
    }
    if (featuredChannelsUrls != null) {
      _json["featuredChannelsUrls"] = featuredChannelsUrls;
    }
    if (keywords != null) {
      _json["keywords"] = keywords;
    }
    if (moderateComments != null) {
      _json["moderateComments"] = moderateComments;
    }
    if (profileColor != null) {
      _json["profileColor"] = profileColor;
    }
    if (showBrowseView != null) {
      _json["showBrowseView"] = showBrowseView;
    }
    if (showRelatedChannels != null) {
      _json["showRelatedChannels"] = showRelatedChannels;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (trackingAnalyticsAccountId != null) {
      _json["trackingAnalyticsAccountId"] = trackingAnalyticsAccountId;
    }
    if (unsubscribedTrailer != null) {
      _json["unsubscribedTrailer"] = unsubscribedTrailer;
    }
    return _json;
  }
}


/**
 * Basic details about a channel, including title, description and thumbnails.
 */
class ChannelSnippet {
  /** The description of the channel. */
  core.String description;

  /**
   * The date and time that the channel was created. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * A map of thumbnail images associated with the channel. For each object in
   * the map, the key is the name of the thumbnail image, and the value is an
   * object that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The channel's title. */
  core.String title;


  ChannelSnippet();

  ChannelSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/**
 * Statistics about a channel: number of subscribers, number of videos in the
 * channel, etc.
 */
class ChannelStatistics {
  /** The number of comments for the channel. */
  core.String commentCount;

  /** Whether or not the number of subscribers is shown for this user. */
  core.bool hiddenSubscriberCount;

  /** The number of subscribers that the channel has. */
  core.String subscriberCount;

  /** The number of videos uploaded to the channel. */
  core.String videoCount;

  /** The number of times the channel has been viewed. */
  core.String viewCount;


  ChannelStatistics();

  ChannelStatistics.fromJson(core.Map _json) {
    if (_json.containsKey("commentCount")) {
      commentCount = _json["commentCount"];
    }
    if (_json.containsKey("hiddenSubscriberCount")) {
      hiddenSubscriberCount = _json["hiddenSubscriberCount"];
    }
    if (_json.containsKey("subscriberCount")) {
      subscriberCount = _json["subscriberCount"];
    }
    if (_json.containsKey("videoCount")) {
      videoCount = _json["videoCount"];
    }
    if (_json.containsKey("viewCount")) {
      viewCount = _json["viewCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commentCount != null) {
      _json["commentCount"] = commentCount;
    }
    if (hiddenSubscriberCount != null) {
      _json["hiddenSubscriberCount"] = hiddenSubscriberCount;
    }
    if (subscriberCount != null) {
      _json["subscriberCount"] = subscriberCount;
    }
    if (videoCount != null) {
      _json["videoCount"] = videoCount;
    }
    if (viewCount != null) {
      _json["viewCount"] = viewCount;
    }
    return _json;
  }
}


/** JSON template for the status part of a channel. */
class ChannelStatus {
  /**
   * If true, then the user is linked to either a YouTube username or G+
   * account. Otherwise, the user doesn't have a public YouTube identity.
   */
  core.bool isLinked;

  /**
   * The long uploads status of this channel. See
   * Possible string values are:
   * - "allowed"
   * - "disallowed"
   * - "eligible"
   * - "longUploadsUnspecified"
   */
  core.String longUploadsStatus;

  /**
   * Privacy status of the channel.
   * Possible string values are:
   * - "private"
   * - "public"
   * - "unlisted"
   */
  core.String privacyStatus;


  ChannelStatus();

  ChannelStatus.fromJson(core.Map _json) {
    if (_json.containsKey("isLinked")) {
      isLinked = _json["isLinked"];
    }
    if (_json.containsKey("longUploadsStatus")) {
      longUploadsStatus = _json["longUploadsStatus"];
    }
    if (_json.containsKey("privacyStatus")) {
      privacyStatus = _json["privacyStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isLinked != null) {
      _json["isLinked"] = isLinked;
    }
    if (longUploadsStatus != null) {
      _json["longUploadsStatus"] = longUploadsStatus;
    }
    if (privacyStatus != null) {
      _json["privacyStatus"] = privacyStatus;
    }
    return _json;
  }
}


/** Freebase topic information related to the channel. */
class ChannelTopicDetails {
  /**
   * A list of Freebase topic IDs associated with the channel. You can retrieve
   * information about each topic using the Freebase Topic API.
   */
  core.List<core.String> topicIds;


  ChannelTopicDetails();

  ChannelTopicDetails.fromJson(core.Map _json) {
    if (_json.containsKey("topicIds")) {
      topicIds = _json["topicIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (topicIds != null) {
      _json["topicIds"] = topicIds;
    }
    return _json;
  }
}


/**
 * Ratings schemes. The country-specific ratings are mostly for movies and
 * shows.
 */
class ContentRating {
  /**
   * Rating system in Australia - Australian Classification Board
   * Possible string values are:
   * - "acbC"
   * - "acbE"
   * - "acbG"
   * - "acbM"
   * - "acbMa15plus"
   * - "acbP"
   * - "acbPg"
   * - "acbR18plus"
   * - "acbUnrated"
   */
  core.String acbRating;

  /**
   * Rating system for Italy - Autorit� per le Garanzie nelle Comunicazioni
   * Possible string values are:
   * - "agcomT"
   * - "agcomUnrated"
   * - "agcomVm14"
   * - "agcomVm18"
   */
  core.String agcomRating;

  /**
   * Rating system for Chile - Asociaci�n Nacional de Televisi�n
   * Possible string values are:
   * - "anatelA"
   * - "anatelF"
   * - "anatelI"
   * - "anatelI10"
   * - "anatelI12"
   * - "anatelI7"
   * - "anatelR"
   * - "anatelUnrated"
   */
  core.String anatelRating;

  /**
   * British Board of Film Classification
   * Possible string values are:
   * - "bbfc12"
   * - "bbfc12a"
   * - "bbfc15"
   * - "bbfc18"
   * - "bbfcPg"
   * - "bbfcR18"
   * - "bbfcU"
   * - "bbfcUnrated"
   */
  core.String bbfcRating;

  /**
   * Rating system for Thailand - Board of Filmand Video Censors
   * Possible string values are:
   * - "bfvc13"
   * - "bfvc15"
   * - "bfvc18"
   * - "bfvc20"
   * - "bfvcB"
   * - "bfvcE"
   * - "bfvcG"
   * - "bfvcUnrated"
   */
  core.String bfvcRating;

  /**
   * Rating system for Austria - Bundesministeriums f�r Unterricht, Kunst und
   * Kultur!
   * Possible string values are:
   * - "bmukk10"
   * - "bmukk12"
   * - "bmukk14"
   * - "bmukk16"
   * - "bmukk6"
   * - "bmukk8"
   * - "bmukkAa"
   * - "bmukkUnrated"
   */
  core.String bmukkRating;

  /**
   * Rating system for Canadian TV - Canadian TV Classification System
   * Possible string values are:
   * - "catv14plus"
   * - "catv18plus"
   * - "catvC"
   * - "catvC8"
   * - "catvG"
   * - "catvPg"
   * - "catvUnrated"
   */
  core.String catvRating;

  /**
   * Rating system for French Canadian TV - Regie du cinema
   * Possible string values are:
   * - "catvfr13plus"
   * - "catvfr16plus"
   * - "catvfr18plus"
   * - "catvfr8plus"
   * - "catvfrG"
   * - "catvfrUnrated"
   */
  core.String catvfrRating;

  /**
   * Rating system in India - Central Board of Film Certification
   * Possible string values are:
   * - "cbfcA"
   * - "cbfcS"
   * - "cbfcU"
   * - "cbfcUA"
   * - "cbfcUnrated"
   */
  core.String cbfcRating;

  /**
   * Rating system for Chile - Consejo de Calificaci�n Cinematogr�fica
   * Possible string values are:
   * - "ccc14"
   * - "ccc18"
   * - "ccc18s"
   * - "ccc18v"
   * - "ccc6"
   * - "cccTe"
   * - "cccUnrated"
   */
  core.String cccRating;

  /**
   * Rating system for Portugal - Comiss�o de Classifica��o de Espect�culos
   * Possible string values are:
   * - "cceM12"
   * - "cceM16"
   * - "cceM18"
   * - "cceM4"
   * - "cceM6"
   * - "cceUnrated"
   */
  core.String cceRating;

  /**
   * Rating system for Switzerland - Switzerland Rating System
   * Possible string values are:
   * - "chfilm0"
   * - "chfilm12"
   * - "chfilm16"
   * - "chfilm18"
   * - "chfilm6"
   * - "chfilmUnrated"
   */
  core.String chfilmRating;

  /**
   * Canadian Home Video Rating System
   * Possible string values are:
   * - "chvrs14a"
   * - "chvrs18a"
   * - "chvrsE"
   * - "chvrsG"
   * - "chvrsPg"
   * - "chvrsR"
   * - "chvrsUnrated"
   */
  core.String chvrsRating;

  /**
   * Rating system for Belgium - Belgium Rating System
   * Possible string values are:
   * - "cicfE"
   * - "cicfKntEna"
   * - "cicfKtEa"
   * - "cicfUnrated"
   */
  core.String cicfRating;

  /**
   * Rating system for Romania - CONSILIUL NATIONAL AL AUDIOVIZUALULUI - CNA
   * Possible string values are:
   * - "cna12"
   * - "cna15"
   * - "cna18"
   * - "cna18plus"
   * - "cnaAp"
   * - "cnaUnrated"
   */
  core.String cnaRating;

  /**
   * Rating system for France - Conseil sup�rieur de l?audiovisuel
   * Possible string values are:
   * - "csa10"
   * - "csa12"
   * - "csa16"
   * - "csa18"
   * - "csaInterdiction"
   * - "csaUnrated"
   */
  core.String csaRating;

  /**
   * Rating system for Luxembourg - Commission de surveillance de la
   * classification des films
   * Possible string values are:
   * - "cscf12"
   * - "cscf16"
   * - "cscf18"
   * - "cscf6"
   * - "cscfA"
   * - "cscfUnrated"
   */
  core.String cscfRating;

  /**
   * Rating system for Czech republic - Czech republic Rating System
   * Possible string values are:
   * - "czfilm12"
   * - "czfilm14"
   * - "czfilm18"
   * - "czfilmU"
   * - "czfilmUnrated"
   */
  core.String czfilmRating;

  /**
   * Rating system in Brazil - Department of Justice, Rating, Titles and
   * Qualification
   * Possible string values are:
   * - "djctq10"
   * - "djctq12"
   * - "djctq14"
   * - "djctq16"
   * - "djctq18"
   * - "djctqL"
   * - "djctqUnrated"
   */
  core.String djctqRating;

  /**
   * Rating system for Estonia - Estonia Rating System
   * Possible string values are:
   * - "eefilmK12"
   * - "eefilmK14"
   * - "eefilmK16"
   * - "eefilmK6"
   * - "eefilmL"
   * - "eefilmMs12"
   * - "eefilmMs6"
   * - "eefilmPere"
   * - "eefilmUnrated"
   */
  core.String eefilmRating;

  /**
   * Rating system for Egypt - Egypt Rating System
   * Possible string values are:
   * - "egfilm18"
   * - "egfilmBn"
   * - "egfilmGn"
   * - "egfilmUnrated"
   */
  core.String egfilmRating;

  /**
   * Rating system in Japan - Eiga Rinri Kanri Iinkai
   * Possible string values are:
   * - "eirinG"
   * - "eirinPg12"
   * - "eirinR15plus"
   * - "eirinR18plus"
   * - "eirinUnrated"
   */
  core.String eirinRating;

  /**
   * Rating system for Malaysia - Film Censorship Board of Malaysia
   * Possible string values are:
   * - "fcbm18"
   * - "fcbm18pa"
   * - "fcbm18pl"
   * - "fcbm18sg"
   * - "fcbm18sx"
   * - "fcbmP13"
   * - "fcbmU"
   * - "fcbmUnrated"
   */
  core.String fcbmRating;

  /**
   * Rating system for Hong kong - Office for Film, Newspaper and Article
   * Administration
   * Possible string values are:
   * - "fcoI"
   * - "fcoIia"
   * - "fcoIib"
   * - "fcoIii"
   * - "fcoUnrated"
   */
  core.String fcoRating;

  /**
   * Rating system in France - French Minister of Culture
   * Possible string values are:
   * - "fmoc10"
   * - "fmoc12"
   * - "fmoc16"
   * - "fmoc18"
   * - "fmocE"
   * - "fmocU"
   * - "fmocUnrated"
   */
  core.String fmocRating;

  /**
   * Rating system for South africa - Film & Publication Board
   * Possible string values are:
   * - "fpb1012Pg"
   * - "fpb13"
   * - "fpb16"
   * - "fpb18"
   * - "fpb79Pg"
   * - "fpbA"
   * - "fpbPg"
   * - "fpbUnrated"
   * - "fpbX18"
   * - "fpbXx"
   */
  core.String fpbRating;

  /**
   * Rating system in Germany - Voluntary Self Regulation of the Movie Industry
   * Possible string values are:
   * - "fsk0"
   * - "fsk12"
   * - "fsk16"
   * - "fsk18"
   * - "fsk6"
   * - "fskUnrated"
   */
  core.String fskRating;

  /**
   * Rating system for Greece - Greece Rating System
   * Possible string values are:
   * - "grfilmE"
   * - "grfilmK"
   * - "grfilmK13"
   * - "grfilmK17"
   * - "grfilmUnrated"
   */
  core.String grfilmRating;

  /**
   * Rating system in Spain - Instituto de Cinematografia y de las Artes
   * Audiovisuales
   * Possible string values are:
   * - "icaa12"
   * - "icaa13"
   * - "icaa16"
   * - "icaa18"
   * - "icaa7"
   * - "icaaApta"
   * - "icaaUnrated"
   * - "icaaX"
   */
  core.String icaaRating;

  /**
   * Rating system in Ireland - Irish Film Classification Office
   * Possible string values are:
   * - "ifco12"
   * - "ifco15"
   * - "ifco18"
   * - "ifcoG"
   * - "ifcoPg"
   * - "ifcoUnrated"
   */
  core.String ifcoRating;

  /**
   * Rating system for Israel - Israel Rating System
   * Possible string values are:
   * - "ilfilm12"
   * - "ilfilm16"
   * - "ilfilm18"
   * - "ilfilmAa"
   * - "ilfilmUnrated"
   */
  core.String ilfilmRating;

  /**
   * Rating system for Argentina - Instituto Nacional de Cine y Artes
   * Audiovisuales
   * Possible string values are:
   * - "incaaAtp"
   * - "incaaC"
   * - "incaaSam13"
   * - "incaaSam16"
   * - "incaaSam18"
   * - "incaaUnrated"
   */
  core.String incaaRating;

  /**
   * Rating system for Kenya - Kenya Film Classification Board
   * Possible string values are:
   * - "kfcb16plus"
   * - "kfcbG"
   * - "kfcbPg"
   * - "kfcbR"
   * - "kfcbUnrated"
   */
  core.String kfcbRating;

  /**
   * Rating system for Netherlands - Nederlands Instituut voor de Classificatie
   * van Audiovisuele Media
   * Possible string values are:
   * - "kijkwijzer12"
   * - "kijkwijzer16"
   * - "kijkwijzer6"
   * - "kijkwijzer9"
   * - "kijkwijzerAl"
   * - "kijkwijzerUnrated"
   */
  core.String kijkwijzerRating;

  /**
   * Rating system in South Korea - Korea Media Rating Board
   * Possible string values are:
   * - "kmrb12plus"
   * - "kmrb15plus"
   * - "kmrbAll"
   * - "kmrbR"
   * - "kmrbTeenr"
   * - "kmrbUnrated"
   */
  core.String kmrbRating;

  /**
   * Rating system for Indonesia - Lembaga Sensor Film
   * Possible string values are:
   * - "lsfA"
   * - "lsfBo"
   * - "lsfD"
   * - "lsfR"
   * - "lsfSu"
   * - "lsfUnrated"
   */
  core.String lsfRating;

  /**
   * Rating system for Malta - Film Age-Classification Board
   * Possible string values are:
   * - "mccaa12"
   * - "mccaa12a"
   * - "mccaa14"
   * - "mccaa15"
   * - "mccaa16"
   * - "mccaa18"
   * - "mccaaPg"
   * - "mccaaU"
   * - "mccaaUnrated"
   */
  core.String mccaaRating;

  /**
   * Rating system for Denmark - The Media Council for Children and Young People
   * Possible string values are:
   * - "mccyp11"
   * - "mccyp15"
   * - "mccyp7"
   * - "mccypA"
   * - "mccypUnrated"
   */
  core.String mccypRating;

  /**
   * Rating system for Singapore - Media Development Authority
   * Possible string values are:
   * - "mdaG"
   * - "mdaM18"
   * - "mdaNc16"
   * - "mdaPg"
   * - "mdaPg13"
   * - "mdaR21"
   * - "mdaUnrated"
   */
  core.String mdaRating;

  /**
   * Rating system for Norway - Medietilsynet
   * Possible string values are:
   * - "medietilsynet11"
   * - "medietilsynet15"
   * - "medietilsynet18"
   * - "medietilsynet7"
   * - "medietilsynetA"
   * - "medietilsynetUnrated"
   */
  core.String medietilsynetRating;

  /**
   * Rating system for Finland - Finnish Centre for Media Education and
   * Audiovisual Media
   * Possible string values are:
   * - "meku12"
   * - "meku16"
   * - "meku18"
   * - "meku7"
   * - "mekuS"
   * - "mekuUnrated"
   */
  core.String mekuRating;

  /**
   * Rating system in Italy - Ministero dei Beni e delle Attivita Culturali e
   * del Turismo
   * Possible string values are:
   * - "mibacT"
   * - "mibacUnrated"
   * - "mibacVap"
   * - "mibacVm12"
   * - "mibacVm14"
   * - "mibacVm18"
   */
  core.String mibacRating;

  /**
   * Rating system for Colombia - MoC
   * Possible string values are:
   * - "moc12"
   * - "moc15"
   * - "moc18"
   * - "moc7"
   * - "mocBanned"
   * - "mocE"
   * - "mocT"
   * - "mocUnrated"
   * - "mocX"
   */
  core.String mocRating;

  /**
   * Rating system for Taiwan - Ministry of Culture - Tawan
   * Possible string values are:
   * - "moctwG"
   * - "moctwP"
   * - "moctwPg"
   * - "moctwR"
   * - "moctwUnrated"
   */
  core.String moctwRating;

  /**
   * Motion Picture Association of America rating for the content.
   * Possible string values are:
   * - "mpaaG"
   * - "mpaaNc17"
   * - "mpaaPg"
   * - "mpaaPg13"
   * - "mpaaR"
   * - "mpaaUnrated"
   */
  core.String mpaaRating;

  /**
   * Rating system for Philippines - MOVIE AND TELEVISION REVIEW AND
   * CLASSIFICATION BOARD
   * Possible string values are:
   * - "mtrcbG"
   * - "mtrcbPg"
   * - "mtrcbR13"
   * - "mtrcbR16"
   * - "mtrcbR18"
   * - "mtrcbUnrated"
   * - "mtrcbX"
   */
  core.String mtrcbRating;

  /**
   * Rating system for Maldives - National Bureau of Classification
   * Possible string values are:
   * - "nbc12plus"
   * - "nbc15plus"
   * - "nbc18plus"
   * - "nbc18plusr"
   * - "nbcG"
   * - "nbcPg"
   * - "nbcPu"
   * - "nbcUnrated"
   */
  core.String nbcRating;

  /**
   * Rating system for Poland - National Broadcasting Council
   * Possible string values are:
   * - "nbcpl18plus"
   * - "nbcplI"
   * - "nbcplIi"
   * - "nbcplIii"
   * - "nbcplIv"
   * - "nbcplUnrated"
   */
  core.String nbcplRating;

  /**
   * Rating system for Bulgaria - National Film Centre
   * Possible string values are:
   * - "nfrcA"
   * - "nfrcB"
   * - "nfrcC"
   * - "nfrcD"
   * - "nfrcUnrated"
   * - "nfrcX"
   */
  core.String nfrcRating;

  /**
   * Rating system for Nigeria - National Film and Video Censors Board
   * Possible string values are:
   * - "nfvcb12"
   * - "nfvcb12a"
   * - "nfvcb15"
   * - "nfvcb18"
   * - "nfvcbG"
   * - "nfvcbPg"
   * - "nfvcbRe"
   * - "nfvcbUnrated"
   */
  core.String nfvcbRating;

  /**
   * Rating system for Latvia - National Film Center of Latvia
   * Possible string values are:
   * - "nkclv12plus"
   * - "nkclv18plus"
   * - "nkclv7plus"
   * - "nkclvU"
   * - "nkclvUnrated"
   */
  core.String nkclvRating;

  /**
   * Rating system in New Zealand - Office of Film and Literature Classification
   * Possible string values are:
   * - "oflcG"
   * - "oflcM"
   * - "oflcPg"
   * - "oflcR13"
   * - "oflcR15"
   * - "oflcR16"
   * - "oflcR18"
   * - "oflcRp13"
   * - "oflcRp16"
   * - "oflcUnrated"
   */
  core.String oflcRating;

  /**
   * Rating system for Peru - Peru Rating System
   * Possible string values are:
   * - "pefilm14"
   * - "pefilm18"
   * - "pefilmPg"
   * - "pefilmPt"
   * - "pefilmUnrated"
   */
  core.String pefilmRating;

  /**
   * Rating system for Hungary - Rating Committee of the National Office of Film
   * Possible string values are:
   * - "rcnofI"
   * - "rcnofIi"
   * - "rcnofIii"
   * - "rcnofIv"
   * - "rcnofUnrated"
   * - "rcnofV"
   * - "rcnofVi"
   */
  core.String rcnofRating;

  /**
   * Rating system for Venezuela - SiBCI
   * Possible string values are:
   * - "resorteviolenciaA"
   * - "resorteviolenciaB"
   * - "resorteviolenciaC"
   * - "resorteviolenciaD"
   * - "resorteviolenciaE"
   * - "resorteviolenciaUnrated"
   */
  core.String resorteviolenciaRating;

  /**
   * Rating system in Mexico - General Directorate of Radio, Television and
   * Cinematography
   * Possible string values are:
   * - "rtcA"
   * - "rtcAa"
   * - "rtcB"
   * - "rtcB15"
   * - "rtcC"
   * - "rtcD"
   * - "rtcUnrated"
   */
  core.String rtcRating;

  /**
   * Rating system for Ireland - Raidi� Teilif�s �ireann
   * Possible string values are:
   * - "rteCh"
   * - "rteGa"
   * - "rteMa"
   * - "rtePs"
   * - "rteUnrated"
   */
  core.String rteRating;

  /**
   * Rating system in Russia
   * Possible string values are:
   * - "russia0"
   * - "russia12"
   * - "russia16"
   * - "russia18"
   * - "russia6"
   * - "russiaUnrated"
   */
  core.String russiaRating;

  /**
   * Rating system for Slovakia - Slovakia Rating System
   * Possible string values are:
   * - "skfilmG"
   * - "skfilmP2"
   * - "skfilmP5"
   * - "skfilmP8"
   * - "skfilmUnrated"
   */
  core.String skfilmRating;

  /**
   * Rating system for Iceland - SMAIS
   * Possible string values are:
   * - "smais12"
   * - "smais14"
   * - "smais16"
   * - "smais18"
   * - "smais7"
   * - "smaisL"
   * - "smaisUnrated"
   */
  core.String smaisRating;

  /**
   * Rating system for Sweden - Statens medier�d (National Media Council)
   * Possible string values are:
   * - "smsa11"
   * - "smsa15"
   * - "smsa7"
   * - "smsaA"
   * - "smsaUnrated"
   */
  core.String smsaRating;

  /**
   * TV Parental Guidelines rating of the content.
   * Possible string values are:
   * - "pg14"
   * - "tvpgG"
   * - "tvpgMa"
   * - "tvpgPg"
   * - "tvpgUnrated"
   * - "tvpgY"
   * - "tvpgY7"
   * - "tvpgY7Fv"
   */
  core.String tvpgRating;

  /**
   * Internal YouTube rating.
   * Possible string values are:
   * - "ytAgeRestricted"
   */
  core.String ytRating;


  ContentRating();

  ContentRating.fromJson(core.Map _json) {
    if (_json.containsKey("acbRating")) {
      acbRating = _json["acbRating"];
    }
    if (_json.containsKey("agcomRating")) {
      agcomRating = _json["agcomRating"];
    }
    if (_json.containsKey("anatelRating")) {
      anatelRating = _json["anatelRating"];
    }
    if (_json.containsKey("bbfcRating")) {
      bbfcRating = _json["bbfcRating"];
    }
    if (_json.containsKey("bfvcRating")) {
      bfvcRating = _json["bfvcRating"];
    }
    if (_json.containsKey("bmukkRating")) {
      bmukkRating = _json["bmukkRating"];
    }
    if (_json.containsKey("catvRating")) {
      catvRating = _json["catvRating"];
    }
    if (_json.containsKey("catvfrRating")) {
      catvfrRating = _json["catvfrRating"];
    }
    if (_json.containsKey("cbfcRating")) {
      cbfcRating = _json["cbfcRating"];
    }
    if (_json.containsKey("cccRating")) {
      cccRating = _json["cccRating"];
    }
    if (_json.containsKey("cceRating")) {
      cceRating = _json["cceRating"];
    }
    if (_json.containsKey("chfilmRating")) {
      chfilmRating = _json["chfilmRating"];
    }
    if (_json.containsKey("chvrsRating")) {
      chvrsRating = _json["chvrsRating"];
    }
    if (_json.containsKey("cicfRating")) {
      cicfRating = _json["cicfRating"];
    }
    if (_json.containsKey("cnaRating")) {
      cnaRating = _json["cnaRating"];
    }
    if (_json.containsKey("csaRating")) {
      csaRating = _json["csaRating"];
    }
    if (_json.containsKey("cscfRating")) {
      cscfRating = _json["cscfRating"];
    }
    if (_json.containsKey("czfilmRating")) {
      czfilmRating = _json["czfilmRating"];
    }
    if (_json.containsKey("djctqRating")) {
      djctqRating = _json["djctqRating"];
    }
    if (_json.containsKey("eefilmRating")) {
      eefilmRating = _json["eefilmRating"];
    }
    if (_json.containsKey("egfilmRating")) {
      egfilmRating = _json["egfilmRating"];
    }
    if (_json.containsKey("eirinRating")) {
      eirinRating = _json["eirinRating"];
    }
    if (_json.containsKey("fcbmRating")) {
      fcbmRating = _json["fcbmRating"];
    }
    if (_json.containsKey("fcoRating")) {
      fcoRating = _json["fcoRating"];
    }
    if (_json.containsKey("fmocRating")) {
      fmocRating = _json["fmocRating"];
    }
    if (_json.containsKey("fpbRating")) {
      fpbRating = _json["fpbRating"];
    }
    if (_json.containsKey("fskRating")) {
      fskRating = _json["fskRating"];
    }
    if (_json.containsKey("grfilmRating")) {
      grfilmRating = _json["grfilmRating"];
    }
    if (_json.containsKey("icaaRating")) {
      icaaRating = _json["icaaRating"];
    }
    if (_json.containsKey("ifcoRating")) {
      ifcoRating = _json["ifcoRating"];
    }
    if (_json.containsKey("ilfilmRating")) {
      ilfilmRating = _json["ilfilmRating"];
    }
    if (_json.containsKey("incaaRating")) {
      incaaRating = _json["incaaRating"];
    }
    if (_json.containsKey("kfcbRating")) {
      kfcbRating = _json["kfcbRating"];
    }
    if (_json.containsKey("kijkwijzerRating")) {
      kijkwijzerRating = _json["kijkwijzerRating"];
    }
    if (_json.containsKey("kmrbRating")) {
      kmrbRating = _json["kmrbRating"];
    }
    if (_json.containsKey("lsfRating")) {
      lsfRating = _json["lsfRating"];
    }
    if (_json.containsKey("mccaaRating")) {
      mccaaRating = _json["mccaaRating"];
    }
    if (_json.containsKey("mccypRating")) {
      mccypRating = _json["mccypRating"];
    }
    if (_json.containsKey("mdaRating")) {
      mdaRating = _json["mdaRating"];
    }
    if (_json.containsKey("medietilsynetRating")) {
      medietilsynetRating = _json["medietilsynetRating"];
    }
    if (_json.containsKey("mekuRating")) {
      mekuRating = _json["mekuRating"];
    }
    if (_json.containsKey("mibacRating")) {
      mibacRating = _json["mibacRating"];
    }
    if (_json.containsKey("mocRating")) {
      mocRating = _json["mocRating"];
    }
    if (_json.containsKey("moctwRating")) {
      moctwRating = _json["moctwRating"];
    }
    if (_json.containsKey("mpaaRating")) {
      mpaaRating = _json["mpaaRating"];
    }
    if (_json.containsKey("mtrcbRating")) {
      mtrcbRating = _json["mtrcbRating"];
    }
    if (_json.containsKey("nbcRating")) {
      nbcRating = _json["nbcRating"];
    }
    if (_json.containsKey("nbcplRating")) {
      nbcplRating = _json["nbcplRating"];
    }
    if (_json.containsKey("nfrcRating")) {
      nfrcRating = _json["nfrcRating"];
    }
    if (_json.containsKey("nfvcbRating")) {
      nfvcbRating = _json["nfvcbRating"];
    }
    if (_json.containsKey("nkclvRating")) {
      nkclvRating = _json["nkclvRating"];
    }
    if (_json.containsKey("oflcRating")) {
      oflcRating = _json["oflcRating"];
    }
    if (_json.containsKey("pefilmRating")) {
      pefilmRating = _json["pefilmRating"];
    }
    if (_json.containsKey("rcnofRating")) {
      rcnofRating = _json["rcnofRating"];
    }
    if (_json.containsKey("resorteviolenciaRating")) {
      resorteviolenciaRating = _json["resorteviolenciaRating"];
    }
    if (_json.containsKey("rtcRating")) {
      rtcRating = _json["rtcRating"];
    }
    if (_json.containsKey("rteRating")) {
      rteRating = _json["rteRating"];
    }
    if (_json.containsKey("russiaRating")) {
      russiaRating = _json["russiaRating"];
    }
    if (_json.containsKey("skfilmRating")) {
      skfilmRating = _json["skfilmRating"];
    }
    if (_json.containsKey("smaisRating")) {
      smaisRating = _json["smaisRating"];
    }
    if (_json.containsKey("smsaRating")) {
      smsaRating = _json["smsaRating"];
    }
    if (_json.containsKey("tvpgRating")) {
      tvpgRating = _json["tvpgRating"];
    }
    if (_json.containsKey("ytRating")) {
      ytRating = _json["ytRating"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (acbRating != null) {
      _json["acbRating"] = acbRating;
    }
    if (agcomRating != null) {
      _json["agcomRating"] = agcomRating;
    }
    if (anatelRating != null) {
      _json["anatelRating"] = anatelRating;
    }
    if (bbfcRating != null) {
      _json["bbfcRating"] = bbfcRating;
    }
    if (bfvcRating != null) {
      _json["bfvcRating"] = bfvcRating;
    }
    if (bmukkRating != null) {
      _json["bmukkRating"] = bmukkRating;
    }
    if (catvRating != null) {
      _json["catvRating"] = catvRating;
    }
    if (catvfrRating != null) {
      _json["catvfrRating"] = catvfrRating;
    }
    if (cbfcRating != null) {
      _json["cbfcRating"] = cbfcRating;
    }
    if (cccRating != null) {
      _json["cccRating"] = cccRating;
    }
    if (cceRating != null) {
      _json["cceRating"] = cceRating;
    }
    if (chfilmRating != null) {
      _json["chfilmRating"] = chfilmRating;
    }
    if (chvrsRating != null) {
      _json["chvrsRating"] = chvrsRating;
    }
    if (cicfRating != null) {
      _json["cicfRating"] = cicfRating;
    }
    if (cnaRating != null) {
      _json["cnaRating"] = cnaRating;
    }
    if (csaRating != null) {
      _json["csaRating"] = csaRating;
    }
    if (cscfRating != null) {
      _json["cscfRating"] = cscfRating;
    }
    if (czfilmRating != null) {
      _json["czfilmRating"] = czfilmRating;
    }
    if (djctqRating != null) {
      _json["djctqRating"] = djctqRating;
    }
    if (eefilmRating != null) {
      _json["eefilmRating"] = eefilmRating;
    }
    if (egfilmRating != null) {
      _json["egfilmRating"] = egfilmRating;
    }
    if (eirinRating != null) {
      _json["eirinRating"] = eirinRating;
    }
    if (fcbmRating != null) {
      _json["fcbmRating"] = fcbmRating;
    }
    if (fcoRating != null) {
      _json["fcoRating"] = fcoRating;
    }
    if (fmocRating != null) {
      _json["fmocRating"] = fmocRating;
    }
    if (fpbRating != null) {
      _json["fpbRating"] = fpbRating;
    }
    if (fskRating != null) {
      _json["fskRating"] = fskRating;
    }
    if (grfilmRating != null) {
      _json["grfilmRating"] = grfilmRating;
    }
    if (icaaRating != null) {
      _json["icaaRating"] = icaaRating;
    }
    if (ifcoRating != null) {
      _json["ifcoRating"] = ifcoRating;
    }
    if (ilfilmRating != null) {
      _json["ilfilmRating"] = ilfilmRating;
    }
    if (incaaRating != null) {
      _json["incaaRating"] = incaaRating;
    }
    if (kfcbRating != null) {
      _json["kfcbRating"] = kfcbRating;
    }
    if (kijkwijzerRating != null) {
      _json["kijkwijzerRating"] = kijkwijzerRating;
    }
    if (kmrbRating != null) {
      _json["kmrbRating"] = kmrbRating;
    }
    if (lsfRating != null) {
      _json["lsfRating"] = lsfRating;
    }
    if (mccaaRating != null) {
      _json["mccaaRating"] = mccaaRating;
    }
    if (mccypRating != null) {
      _json["mccypRating"] = mccypRating;
    }
    if (mdaRating != null) {
      _json["mdaRating"] = mdaRating;
    }
    if (medietilsynetRating != null) {
      _json["medietilsynetRating"] = medietilsynetRating;
    }
    if (mekuRating != null) {
      _json["mekuRating"] = mekuRating;
    }
    if (mibacRating != null) {
      _json["mibacRating"] = mibacRating;
    }
    if (mocRating != null) {
      _json["mocRating"] = mocRating;
    }
    if (moctwRating != null) {
      _json["moctwRating"] = moctwRating;
    }
    if (mpaaRating != null) {
      _json["mpaaRating"] = mpaaRating;
    }
    if (mtrcbRating != null) {
      _json["mtrcbRating"] = mtrcbRating;
    }
    if (nbcRating != null) {
      _json["nbcRating"] = nbcRating;
    }
    if (nbcplRating != null) {
      _json["nbcplRating"] = nbcplRating;
    }
    if (nfrcRating != null) {
      _json["nfrcRating"] = nfrcRating;
    }
    if (nfvcbRating != null) {
      _json["nfvcbRating"] = nfvcbRating;
    }
    if (nkclvRating != null) {
      _json["nkclvRating"] = nkclvRating;
    }
    if (oflcRating != null) {
      _json["oflcRating"] = oflcRating;
    }
    if (pefilmRating != null) {
      _json["pefilmRating"] = pefilmRating;
    }
    if (rcnofRating != null) {
      _json["rcnofRating"] = rcnofRating;
    }
    if (resorteviolenciaRating != null) {
      _json["resorteviolenciaRating"] = resorteviolenciaRating;
    }
    if (rtcRating != null) {
      _json["rtcRating"] = rtcRating;
    }
    if (rteRating != null) {
      _json["rteRating"] = rteRating;
    }
    if (russiaRating != null) {
      _json["russiaRating"] = russiaRating;
    }
    if (skfilmRating != null) {
      _json["skfilmRating"] = skfilmRating;
    }
    if (smaisRating != null) {
      _json["smaisRating"] = smaisRating;
    }
    if (smsaRating != null) {
      _json["smsaRating"] = smsaRating;
    }
    if (tvpgRating != null) {
      _json["tvpgRating"] = tvpgRating;
    }
    if (ytRating != null) {
      _json["ytRating"] = ytRating;
    }
    return _json;
  }
}


/** Geographical coordinates of a point, in WGS84. */
class GeoPoint {
  /** Altitude above the reference ellipsoid, in meters. */
  core.double altitude;

  /** Latitude in degrees. */
  core.double latitude;

  /** Longitude in degrees. */
  core.double longitude;


  GeoPoint();

  GeoPoint.fromJson(core.Map _json) {
    if (_json.containsKey("altitude")) {
      altitude = _json["altitude"];
    }
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"];
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (altitude != null) {
      _json["altitude"] = altitude;
    }
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}


/**
 * A guideCategory resource identifies a category that YouTube algorithmically
 * assigns based on a channel's content or other indicators, such as the
 * channel's popularity. The list is similar to video categories, with the
 * difference being that a video's uploader can assign a video category but only
 * YouTube can assign a channel category.
 */
class GuideCategory {
  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the guide category. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#guideCategory".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the category, such as its
   * title.
   */
  GuideCategorySnippet snippet;


  GuideCategory();

  GuideCategory.fromJson(core.Map _json) {
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
      snippet = new GuideCategorySnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class GuideCategoryListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /**
   * A list of categories that can be associated with YouTube channels. In this
   * map, the category ID is the map key, and its value is the corresponding
   * guideCategory resource.
   */
  core.List<GuideCategory> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#guideCategoryListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  GuideCategoryListResponse();

  GuideCategoryListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new GuideCategory.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Basic details about a guide category. */
class GuideCategorySnippet {
  /** Not documented yet. */
  core.String channelId;

  /** Description of the guide category. */
  core.String title;


  GuideCategorySnippet();

  GuideCategorySnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/**
 * An i18nLanguage resource identifies a UI language currently supported by
 * YouTube.
 */
class I18nLanguage {
  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the i18n language. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#i18nLanguage".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the i18n language, such as
   * language code and human-readable name.
   */
  I18nLanguageSnippet snippet;


  I18nLanguage();

  I18nLanguage.fromJson(core.Map _json) {
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
      snippet = new I18nLanguageSnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class I18nLanguageListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /**
   * A list of supported i18n languages. In this map, the i18n language ID is
   * the map key, and its value is the corresponding i18nLanguage resource.
   */
  core.List<I18nLanguage> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#i18nLanguageListResponse".
   */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  I18nLanguageListResponse();

  I18nLanguageListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new I18nLanguage.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about an i18n language, such as language code and
 * human-readable name.
 */
class I18nLanguageSnippet {
  /** A short BCP-47 code that uniquely identifies a language. */
  core.String hl;

  /** The human-readable name of the language in the language itself. */
  core.String name;


  I18nLanguageSnippet();

  I18nLanguageSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("hl")) {
      hl = _json["hl"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (hl != null) {
      _json["hl"] = hl;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** A i18nRegion resource identifies a region where YouTube is available. */
class I18nRegion {
  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the i18n region. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#i18nRegion".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the i18n region, such as
   * region code and human-readable name.
   */
  I18nRegionSnippet snippet;


  I18nRegion();

  I18nRegion.fromJson(core.Map _json) {
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
      snippet = new I18nRegionSnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class I18nRegionListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /**
   * A list of regions where YouTube is available. In this map, the i18n region
   * ID is the map key, and its value is the corresponding i18nRegion resource.
   */
  core.List<I18nRegion> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#i18nRegionListResponse".
   */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  I18nRegionListResponse();

  I18nRegionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new I18nRegion.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about an i18n region, such as region code and human-readable
 * name.
 */
class I18nRegionSnippet {
  /** The region code as a 2-letter ISO country code. */
  core.String gl;

  /** The human-readable name of the region. */
  core.String name;


  I18nRegionSnippet();

  I18nRegionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("gl")) {
      gl = _json["gl"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (gl != null) {
      _json["gl"] = gl;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Branding properties for images associated with the channel. */
class ImageSettings {
  /**
   * The URL for the background image shown on the video watch page. The image
   * should be 1200px by 615px, with a maximum file size of 128k.
   */
  LocalizedProperty backgroundImageUrl;

  /**
   * This is used only in update requests; if it's set, we use this URL to
   * generate all of the above banner URLs.
   */
  core.String bannerExternalUrl;

  /** Banner image. Desktop size (1060x175). */
  core.String bannerImageUrl;

  /** Banner image. Mobile size high resolution (1440x395). */
  core.String bannerMobileExtraHdImageUrl;

  /** Banner image. Mobile size high resolution (1280x360). */
  core.String bannerMobileHdImageUrl;

  /** Banner image. Mobile size (640x175). */
  core.String bannerMobileImageUrl;

  /** Banner image. Mobile size low resolution (320x88). */
  core.String bannerMobileLowImageUrl;

  /** Banner image. Mobile size medium/high resolution (960x263). */
  core.String bannerMobileMediumHdImageUrl;

  /** Banner image. Tablet size extra high resolution (2560x424). */
  core.String bannerTabletExtraHdImageUrl;

  /** Banner image. Tablet size high resolution (2276x377). */
  core.String bannerTabletHdImageUrl;

  /** Banner image. Tablet size (1707x283). */
  core.String bannerTabletImageUrl;

  /** Banner image. Tablet size low resolution (1138x188). */
  core.String bannerTabletLowImageUrl;

  /** Banner image. TV size high resolution (1920x1080). */
  core.String bannerTvHighImageUrl;

  /** Banner image. TV size extra high resolution (2120x1192). */
  core.String bannerTvImageUrl;

  /** Banner image. TV size low resolution (854x480). */
  core.String bannerTvLowImageUrl;

  /** Banner image. TV size medium resolution (1280x720). */
  core.String bannerTvMediumImageUrl;

  /** The image map script for the large banner image. */
  LocalizedProperty largeBrandedBannerImageImapScript;

  /**
   * The URL for the 854px by 70px image that appears below the video player in
   * the expanded video view of the video watch page.
   */
  LocalizedProperty largeBrandedBannerImageUrl;

  /** The image map script for the small banner image. */
  LocalizedProperty smallBrandedBannerImageImapScript;

  /**
   * The URL for the 640px by 70px banner image that appears below the video
   * player in the default view of the video watch page.
   */
  LocalizedProperty smallBrandedBannerImageUrl;

  /**
   * The URL for a 1px by 1px tracking pixel that can be used to collect
   * statistics for views of the channel or video pages.
   */
  core.String trackingImageUrl;

  /**
   * The URL for the image that appears above the top-left corner of the video
   * player. This is a 25-pixel-high image with a flexible width that cannot
   * exceed 170 pixels.
   */
  core.String watchIconImageUrl;


  ImageSettings();

  ImageSettings.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundImageUrl")) {
      backgroundImageUrl = new LocalizedProperty.fromJson(_json["backgroundImageUrl"]);
    }
    if (_json.containsKey("bannerExternalUrl")) {
      bannerExternalUrl = _json["bannerExternalUrl"];
    }
    if (_json.containsKey("bannerImageUrl")) {
      bannerImageUrl = _json["bannerImageUrl"];
    }
    if (_json.containsKey("bannerMobileExtraHdImageUrl")) {
      bannerMobileExtraHdImageUrl = _json["bannerMobileExtraHdImageUrl"];
    }
    if (_json.containsKey("bannerMobileHdImageUrl")) {
      bannerMobileHdImageUrl = _json["bannerMobileHdImageUrl"];
    }
    if (_json.containsKey("bannerMobileImageUrl")) {
      bannerMobileImageUrl = _json["bannerMobileImageUrl"];
    }
    if (_json.containsKey("bannerMobileLowImageUrl")) {
      bannerMobileLowImageUrl = _json["bannerMobileLowImageUrl"];
    }
    if (_json.containsKey("bannerMobileMediumHdImageUrl")) {
      bannerMobileMediumHdImageUrl = _json["bannerMobileMediumHdImageUrl"];
    }
    if (_json.containsKey("bannerTabletExtraHdImageUrl")) {
      bannerTabletExtraHdImageUrl = _json["bannerTabletExtraHdImageUrl"];
    }
    if (_json.containsKey("bannerTabletHdImageUrl")) {
      bannerTabletHdImageUrl = _json["bannerTabletHdImageUrl"];
    }
    if (_json.containsKey("bannerTabletImageUrl")) {
      bannerTabletImageUrl = _json["bannerTabletImageUrl"];
    }
    if (_json.containsKey("bannerTabletLowImageUrl")) {
      bannerTabletLowImageUrl = _json["bannerTabletLowImageUrl"];
    }
    if (_json.containsKey("bannerTvHighImageUrl")) {
      bannerTvHighImageUrl = _json["bannerTvHighImageUrl"];
    }
    if (_json.containsKey("bannerTvImageUrl")) {
      bannerTvImageUrl = _json["bannerTvImageUrl"];
    }
    if (_json.containsKey("bannerTvLowImageUrl")) {
      bannerTvLowImageUrl = _json["bannerTvLowImageUrl"];
    }
    if (_json.containsKey("bannerTvMediumImageUrl")) {
      bannerTvMediumImageUrl = _json["bannerTvMediumImageUrl"];
    }
    if (_json.containsKey("largeBrandedBannerImageImapScript")) {
      largeBrandedBannerImageImapScript = new LocalizedProperty.fromJson(_json["largeBrandedBannerImageImapScript"]);
    }
    if (_json.containsKey("largeBrandedBannerImageUrl")) {
      largeBrandedBannerImageUrl = new LocalizedProperty.fromJson(_json["largeBrandedBannerImageUrl"]);
    }
    if (_json.containsKey("smallBrandedBannerImageImapScript")) {
      smallBrandedBannerImageImapScript = new LocalizedProperty.fromJson(_json["smallBrandedBannerImageImapScript"]);
    }
    if (_json.containsKey("smallBrandedBannerImageUrl")) {
      smallBrandedBannerImageUrl = new LocalizedProperty.fromJson(_json["smallBrandedBannerImageUrl"]);
    }
    if (_json.containsKey("trackingImageUrl")) {
      trackingImageUrl = _json["trackingImageUrl"];
    }
    if (_json.containsKey("watchIconImageUrl")) {
      watchIconImageUrl = _json["watchIconImageUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backgroundImageUrl != null) {
      _json["backgroundImageUrl"] = (backgroundImageUrl).toJson();
    }
    if (bannerExternalUrl != null) {
      _json["bannerExternalUrl"] = bannerExternalUrl;
    }
    if (bannerImageUrl != null) {
      _json["bannerImageUrl"] = bannerImageUrl;
    }
    if (bannerMobileExtraHdImageUrl != null) {
      _json["bannerMobileExtraHdImageUrl"] = bannerMobileExtraHdImageUrl;
    }
    if (bannerMobileHdImageUrl != null) {
      _json["bannerMobileHdImageUrl"] = bannerMobileHdImageUrl;
    }
    if (bannerMobileImageUrl != null) {
      _json["bannerMobileImageUrl"] = bannerMobileImageUrl;
    }
    if (bannerMobileLowImageUrl != null) {
      _json["bannerMobileLowImageUrl"] = bannerMobileLowImageUrl;
    }
    if (bannerMobileMediumHdImageUrl != null) {
      _json["bannerMobileMediumHdImageUrl"] = bannerMobileMediumHdImageUrl;
    }
    if (bannerTabletExtraHdImageUrl != null) {
      _json["bannerTabletExtraHdImageUrl"] = bannerTabletExtraHdImageUrl;
    }
    if (bannerTabletHdImageUrl != null) {
      _json["bannerTabletHdImageUrl"] = bannerTabletHdImageUrl;
    }
    if (bannerTabletImageUrl != null) {
      _json["bannerTabletImageUrl"] = bannerTabletImageUrl;
    }
    if (bannerTabletLowImageUrl != null) {
      _json["bannerTabletLowImageUrl"] = bannerTabletLowImageUrl;
    }
    if (bannerTvHighImageUrl != null) {
      _json["bannerTvHighImageUrl"] = bannerTvHighImageUrl;
    }
    if (bannerTvImageUrl != null) {
      _json["bannerTvImageUrl"] = bannerTvImageUrl;
    }
    if (bannerTvLowImageUrl != null) {
      _json["bannerTvLowImageUrl"] = bannerTvLowImageUrl;
    }
    if (bannerTvMediumImageUrl != null) {
      _json["bannerTvMediumImageUrl"] = bannerTvMediumImageUrl;
    }
    if (largeBrandedBannerImageImapScript != null) {
      _json["largeBrandedBannerImageImapScript"] = (largeBrandedBannerImageImapScript).toJson();
    }
    if (largeBrandedBannerImageUrl != null) {
      _json["largeBrandedBannerImageUrl"] = (largeBrandedBannerImageUrl).toJson();
    }
    if (smallBrandedBannerImageImapScript != null) {
      _json["smallBrandedBannerImageImapScript"] = (smallBrandedBannerImageImapScript).toJson();
    }
    if (smallBrandedBannerImageUrl != null) {
      _json["smallBrandedBannerImageUrl"] = (smallBrandedBannerImageUrl).toJson();
    }
    if (trackingImageUrl != null) {
      _json["trackingImageUrl"] = trackingImageUrl;
    }
    if (watchIconImageUrl != null) {
      _json["watchIconImageUrl"] = watchIconImageUrl;
    }
    return _json;
  }
}


/** Describes information necessary for ingesting an RTMP or an HTTP stream. */
class IngestionInfo {
  /**
   * The backup ingestion URL that you should use to stream video to YouTube.
   * You have the option of simultaneously streaming the content that you are
   * sending to the ingestionAddress to this URL.
   */
  core.String backupIngestionAddress;

  /**
   * The primary ingestion URL that you should use to stream video to YouTube.
   * You must stream video to this URL.
   *
   * Depending on which application or tool you use to encode your video stream,
   * you may need to enter the stream URL and stream name separately or you may
   * need to concatenate them in the following format:
   *
   * STREAM_URL/STREAM_NAME
   */
  core.String ingestionAddress;

  /** The HTTP or RTMP stream name that YouTube assigns to the video stream. */
  core.String streamName;


  IngestionInfo();

  IngestionInfo.fromJson(core.Map _json) {
    if (_json.containsKey("backupIngestionAddress")) {
      backupIngestionAddress = _json["backupIngestionAddress"];
    }
    if (_json.containsKey("ingestionAddress")) {
      ingestionAddress = _json["ingestionAddress"];
    }
    if (_json.containsKey("streamName")) {
      streamName = _json["streamName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backupIngestionAddress != null) {
      _json["backupIngestionAddress"] = backupIngestionAddress;
    }
    if (ingestionAddress != null) {
      _json["ingestionAddress"] = ingestionAddress;
    }
    if (streamName != null) {
      _json["streamName"] = streamName;
    }
    return _json;
  }
}


/** Not documented yet. */
class InvideoBranding {
  /** Not documented yet. */
  core.String imageBytes;

  core.List<core.int> get imageBytesAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(imageBytes);
  }

  void set imageBytesAsBytes(core.List<core.int> _bytes) {
    imageBytes = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Not documented yet. */
  core.String imageUrl;

  /** Not documented yet. */
  InvideoPosition position;

  /** Not documented yet. */
  core.String targetChannelId;

  /** Not documented yet. */
  InvideoTiming timing;


  InvideoBranding();

  InvideoBranding.fromJson(core.Map _json) {
    if (_json.containsKey("imageBytes")) {
      imageBytes = _json["imageBytes"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("position")) {
      position = new InvideoPosition.fromJson(_json["position"]);
    }
    if (_json.containsKey("targetChannelId")) {
      targetChannelId = _json["targetChannelId"];
    }
    if (_json.containsKey("timing")) {
      timing = new InvideoTiming.fromJson(_json["timing"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (imageBytes != null) {
      _json["imageBytes"] = imageBytes;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (targetChannelId != null) {
      _json["targetChannelId"] = targetChannelId;
    }
    if (timing != null) {
      _json["timing"] = (timing).toJson();
    }
    return _json;
  }
}


/**
 * Describes the spatial position of a visual widget inside a video. It is a
 * union of various position types, out of which only will be set one.
 */
class InvideoPosition {
  /**
   * Describes in which corner of the video the visual widget will appear.
   * Possible string values are:
   * - "bottomLeft"
   * - "bottomRight"
   * - "topLeft"
   * - "topRight"
   */
  core.String cornerPosition;

  /**
   * Defines the position type.
   * Possible string values are:
   * - "corner"
   */
  core.String type;


  InvideoPosition();

  InvideoPosition.fromJson(core.Map _json) {
    if (_json.containsKey("cornerPosition")) {
      cornerPosition = _json["cornerPosition"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cornerPosition != null) {
      _json["cornerPosition"] = cornerPosition;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * Describes an invideo promotion campaign consisting of multiple promoted
 * items. A campaign belongs to a single channel_id.
 */
class InvideoPromotion {
  /**
   * The default temporal position within the video where the promoted item will
   * be displayed. Can be overriden by more specific timing in the item.
   */
  InvideoTiming defaultTiming;

  /** List of promoted items in decreasing priority. */
  core.List<PromotedItem> items;

  /**
   * The spatial position within the video where the promoted item will be
   * displayed.
   */
  InvideoPosition position;

  /**
   * Indicates whether the channel's promotional campaign uses "smart timing."
   * This feature attempts to show promotions at a point in the video when they
   * are more likely to be clicked and less likely to disrupt the viewing
   * experience. This feature also picks up a single promotion to show on each
   * video.
   */
  core.bool useSmartTiming;


  InvideoPromotion();

  InvideoPromotion.fromJson(core.Map _json) {
    if (_json.containsKey("defaultTiming")) {
      defaultTiming = new InvideoTiming.fromJson(_json["defaultTiming"]);
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new PromotedItem.fromJson(value)).toList();
    }
    if (_json.containsKey("position")) {
      position = new InvideoPosition.fromJson(_json["position"]);
    }
    if (_json.containsKey("useSmartTiming")) {
      useSmartTiming = _json["useSmartTiming"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultTiming != null) {
      _json["defaultTiming"] = (defaultTiming).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (useSmartTiming != null) {
      _json["useSmartTiming"] = useSmartTiming;
    }
    return _json;
  }
}


/** Describes a temporal position of a visual widget inside a video. */
class InvideoTiming {
  /**
   * Defines the duration in milliseconds for which the promotion should be
   * displayed. If missing, the client should use the default.
   */
  core.String durationMs;

  /**
   * Defines the time at which the promotion will appear. Depending on the value
   * of type the value of the offsetMs field will represent a time offset from
   * the start or from the end of the video, expressed in milliseconds.
   */
  core.String offsetMs;

  /**
   * Describes a timing type. If the value is offsetFromStart, then the offsetMs
   * field represents an offset from the start of the video. If the value is
   * offsetFromEnd, then the offsetMs field represents an offset from the end of
   * the video.
   * Possible string values are:
   * - "offsetFromEnd"
   * - "offsetFromStart"
   */
  core.String type;


  InvideoTiming();

  InvideoTiming.fromJson(core.Map _json) {
    if (_json.containsKey("durationMs")) {
      durationMs = _json["durationMs"];
    }
    if (_json.containsKey("offsetMs")) {
      offsetMs = _json["offsetMs"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (durationMs != null) {
      _json["durationMs"] = durationMs;
    }
    if (offsetMs != null) {
      _json["offsetMs"] = offsetMs;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * A liveBroadcast resource represents an event that will be streamed, via live
 * video, on YouTube.
 */
class LiveBroadcast {
  /**
   * The contentDetails object contains information about the event's video
   * content, such as whether the content can be shown in an embedded video
   * player or if it will be archived and therefore available for viewing after
   * the event has concluded.
   */
  LiveBroadcastContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube assigns to uniquely identify the broadcast. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#liveBroadcast".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the event, including its
   * title, description, start time, and end time.
   */
  LiveBroadcastSnippet snippet;

  /** The status object contains information about the event's status. */
  LiveBroadcastStatus status;


  LiveBroadcast();

  LiveBroadcast.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new LiveBroadcastContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new LiveBroadcastSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("status")) {
      status = new LiveBroadcastStatus.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}


/** Detailed settings of a broadcast. */
class LiveBroadcastContentDetails {
  /** This value uniquely identifies the live stream bound to the broadcast. */
  core.String boundStreamId;

  /**
   * This setting indicates whether closed captioning is enabled for this
   * broadcast. The ingestion URL of the closed captions is returned through the
   * liveStreams API.
   */
  core.bool enableClosedCaptions;

  /**
   * This setting indicates whether YouTube should enable content encryption for
   * the broadcast.
   */
  core.bool enableContentEncryption;

  /**
   * This setting determines whether viewers can access DVR controls while
   * watching the video. DVR controls enable the viewer to control the video
   * playback experience by pausing, rewinding, or fast forwarding content. The
   * default value for this property is true.
   *
   *
   *
   * Important: You must set the value to true and also set the enableArchive
   * property's value to true if you want to make playback available immediately
   * after the broadcast ends.
   */
  core.bool enableDvr;

  /**
   * This setting indicates whether the broadcast video can be played in an
   * embedded player. If you choose to archive the video (using the
   * enableArchive property), this setting will also apply to the archived
   * video.
   */
  core.bool enableEmbed;

  /**
   * The monitorStream object contains information about the monitor stream,
   * which the broadcaster can use to review the event content before the
   * broadcast stream is shown publicly.
   */
  MonitorStreamInfo monitorStream;

  /**
   * Automatically start recording after the event goes live. The default value
   * for this property is true.
   *
   *
   *
   * Important: You must also set the enableDvr property's value to true if you
   * want the playback to be available immediately after the broadcast ends. If
   * you set this property's value to true but do not also set the enableDvr
   * property to true, there may be a delay of around one day before the
   * archived video will be available for playback.
   */
  core.bool recordFromStart;

  /**
   * This setting indicates whether the broadcast should automatically begin
   * with an in-stream slate when you update the broadcast's status to live.
   * After updating the status, you then need to send a liveCuepoints.insert
   * request that sets the cuepoint's eventState to end to remove the in-stream
   * slate and make your broadcast stream visible to viewers.
   */
  core.bool startWithSlate;


  LiveBroadcastContentDetails();

  LiveBroadcastContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("boundStreamId")) {
      boundStreamId = _json["boundStreamId"];
    }
    if (_json.containsKey("enableClosedCaptions")) {
      enableClosedCaptions = _json["enableClosedCaptions"];
    }
    if (_json.containsKey("enableContentEncryption")) {
      enableContentEncryption = _json["enableContentEncryption"];
    }
    if (_json.containsKey("enableDvr")) {
      enableDvr = _json["enableDvr"];
    }
    if (_json.containsKey("enableEmbed")) {
      enableEmbed = _json["enableEmbed"];
    }
    if (_json.containsKey("monitorStream")) {
      monitorStream = new MonitorStreamInfo.fromJson(_json["monitorStream"]);
    }
    if (_json.containsKey("recordFromStart")) {
      recordFromStart = _json["recordFromStart"];
    }
    if (_json.containsKey("startWithSlate")) {
      startWithSlate = _json["startWithSlate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (boundStreamId != null) {
      _json["boundStreamId"] = boundStreamId;
    }
    if (enableClosedCaptions != null) {
      _json["enableClosedCaptions"] = enableClosedCaptions;
    }
    if (enableContentEncryption != null) {
      _json["enableContentEncryption"] = enableContentEncryption;
    }
    if (enableDvr != null) {
      _json["enableDvr"] = enableDvr;
    }
    if (enableEmbed != null) {
      _json["enableEmbed"] = enableEmbed;
    }
    if (monitorStream != null) {
      _json["monitorStream"] = (monitorStream).toJson();
    }
    if (recordFromStart != null) {
      _json["recordFromStart"] = recordFromStart;
    }
    if (startWithSlate != null) {
      _json["startWithSlate"] = startWithSlate;
    }
    return _json;
  }
}


/** Not documented yet. */
class LiveBroadcastListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of broadcasts that match the request criteria. */
  core.List<LiveBroadcast> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#liveBroadcastListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  LiveBroadcastListResponse();

  LiveBroadcastListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new LiveBroadcast.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Not documented yet. */
class LiveBroadcastSnippet {
  /**
   * The date and time that the broadcast actually ended. This information is
   * only available once the broadcast's state is complete. The value is
   * specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime actualEndTime;

  /**
   * The date and time that the broadcast actually started. This information is
   * only available once the broadcast's state is live. The value is specified
   * in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime actualStartTime;

  /**
   * The ID that YouTube uses to uniquely identify the channel that is
   * publishing the broadcast.
   */
  core.String channelId;

  /**
   * The broadcast's description. As with the title, you can set this field by
   * modifying the broadcast resource or by setting the description field of the
   * corresponding video resource.
   */
  core.String description;

  /**
   * The date and time that the broadcast was added to YouTube's live broadcast
   * schedule. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
   * format.
   */
  core.DateTime publishedAt;

  /**
   * The date and time that the broadcast is scheduled to end. The value is
   * specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime scheduledEndTime;

  /**
   * The date and time that the broadcast is scheduled to start. The value is
   * specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime scheduledStartTime;

  /**
   * A map of thumbnail images associated with the broadcast. For each nested
   * object in this object, the key is the name of the thumbnail image, and the
   * value is an object that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /**
   * The broadcast's title. Note that the broadcast represents exactly one
   * YouTube video. You can set this field by modifying the broadcast resource
   * or by setting the title field of the corresponding video resource.
   */
  core.String title;


  LiveBroadcastSnippet();

  LiveBroadcastSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("actualEndTime")) {
      actualEndTime = core.DateTime.parse(_json["actualEndTime"]);
    }
    if (_json.containsKey("actualStartTime")) {
      actualStartTime = core.DateTime.parse(_json["actualStartTime"]);
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("scheduledEndTime")) {
      scheduledEndTime = core.DateTime.parse(_json["scheduledEndTime"]);
    }
    if (_json.containsKey("scheduledStartTime")) {
      scheduledStartTime = core.DateTime.parse(_json["scheduledStartTime"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actualEndTime != null) {
      _json["actualEndTime"] = (actualEndTime).toIso8601String();
    }
    if (actualStartTime != null) {
      _json["actualStartTime"] = (actualStartTime).toIso8601String();
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (scheduledEndTime != null) {
      _json["scheduledEndTime"] = (scheduledEndTime).toIso8601String();
    }
    if (scheduledStartTime != null) {
      _json["scheduledStartTime"] = (scheduledStartTime).toIso8601String();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Not documented yet. */
class LiveBroadcastStatus {
  /**
   * The broadcast's status. The status can be updated using the API's
   * liveBroadcasts.transition method.
   * Possible string values are:
   * - "abandoned"
   * - "complete"
   * - "completeStarting"
   * - "created"
   * - "live"
   * - "liveStarting"
   * - "ready"
   * - "reclaimed"
   * - "revoked"
   * - "testStarting"
   * - "testing"
   */
  core.String lifeCycleStatus;

  /**
   * Priority of the live broadcast event (internal state).
   * Possible string values are:
   * - "high"
   * - "low"
   * - "normal"
   */
  core.String liveBroadcastPriority;

  /**
   * The broadcast's privacy status. Note that the broadcast represents exactly
   * one YouTube video, so the privacy settings are identical to those supported
   * for videos. In addition, you can set this field by modifying the broadcast
   * resource or by setting the privacyStatus field of the corresponding video
   * resource.
   * Possible string values are:
   * - "private"
   * - "public"
   * - "unlisted"
   */
  core.String privacyStatus;

  /**
   * The broadcast's recording status.
   * Possible string values are:
   * - "notRecording"
   * - "recorded"
   * - "recording"
   */
  core.String recordingStatus;


  LiveBroadcastStatus();

  LiveBroadcastStatus.fromJson(core.Map _json) {
    if (_json.containsKey("lifeCycleStatus")) {
      lifeCycleStatus = _json["lifeCycleStatus"];
    }
    if (_json.containsKey("liveBroadcastPriority")) {
      liveBroadcastPriority = _json["liveBroadcastPriority"];
    }
    if (_json.containsKey("privacyStatus")) {
      privacyStatus = _json["privacyStatus"];
    }
    if (_json.containsKey("recordingStatus")) {
      recordingStatus = _json["recordingStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (lifeCycleStatus != null) {
      _json["lifeCycleStatus"] = lifeCycleStatus;
    }
    if (liveBroadcastPriority != null) {
      _json["liveBroadcastPriority"] = liveBroadcastPriority;
    }
    if (privacyStatus != null) {
      _json["privacyStatus"] = privacyStatus;
    }
    if (recordingStatus != null) {
      _json["recordingStatus"] = recordingStatus;
    }
    return _json;
  }
}


/** A live stream describes a live ingestion point. */
class LiveStream {
  /**
   * The cdn object defines the live stream's content delivery network (CDN)
   * settings. These settings provide details about the manner in which you
   * stream your content to YouTube.
   */
  CdnSettings cdn;

  /**
   * The content_details object contains information about the stream, including
   * the closed captions ingestion URL.
   */
  LiveStreamContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube assigns to uniquely identify the stream. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#liveStream".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the stream, including its
   * channel, title, and description.
   */
  LiveStreamSnippet snippet;

  /** The status object contains information about live stream's status. */
  LiveStreamStatus status;


  LiveStream();

  LiveStream.fromJson(core.Map _json) {
    if (_json.containsKey("cdn")) {
      cdn = new CdnSettings.fromJson(_json["cdn"]);
    }
    if (_json.containsKey("contentDetails")) {
      contentDetails = new LiveStreamContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new LiveStreamSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("status")) {
      status = new LiveStreamStatus.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cdn != null) {
      _json["cdn"] = (cdn).toJson();
    }
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}


/** Detailed settings of a stream. */
class LiveStreamContentDetails {
  /** The ingestion URL where the closed captions of this stream are sent. */
  core.String closedCaptionsIngestionUrl;

  /**
   * Indicates whether the stream is reusable, which means that it can be bound
   * to multiple broadcasts. It is common for broadcasters to reuse the same
   * stream for many different broadcasts if those broadcasts occur at different
   * times.
   *
   * If you set this value to false, then the stream will not be reusable, which
   * means that it can only be bound to one broadcast. Non-reusable streams
   * differ from reusable streams in the following ways:
   * - A non-reusable stream can only be bound to one broadcast.
   * - A non-reusable stream might be deleted by an automated process after the
   * broadcast ends.
   * - The  liveStreams.list method does not list non-reusable streams if you
   * call the method and set the mine parameter to true. The only way to use
   * that method to retrieve the resource for a non-reusable stream is to use
   * the id parameter to identify the stream.
   */
  core.bool isReusable;


  LiveStreamContentDetails();

  LiveStreamContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("closedCaptionsIngestionUrl")) {
      closedCaptionsIngestionUrl = _json["closedCaptionsIngestionUrl"];
    }
    if (_json.containsKey("isReusable")) {
      isReusable = _json["isReusable"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (closedCaptionsIngestionUrl != null) {
      _json["closedCaptionsIngestionUrl"] = closedCaptionsIngestionUrl;
    }
    if (isReusable != null) {
      _json["isReusable"] = isReusable;
    }
    return _json;
  }
}


/** Not documented yet. */
class LiveStreamListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of live streams that match the request criteria. */
  core.List<LiveStream> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#liveStreamListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  LiveStreamListResponse();

  LiveStreamListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new LiveStream.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Not documented yet. */
class LiveStreamSnippet {
  /**
   * The ID that YouTube uses to uniquely identify the channel that is
   * transmitting the stream.
   */
  core.String channelId;

  /**
   * The stream's description. The value cannot be longer than 10000 characters.
   */
  core.String description;

  /**
   * The date and time that the stream was created. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * The stream's title. The value must be between 1 and 128 characters long.
   */
  core.String title;


  LiveStreamSnippet();

  LiveStreamSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Brief description of the live stream status. */
class LiveStreamStatus {
  /**
   * Not documented yet.
   * Possible string values are:
   * - "active"
   * - "created"
   * - "error"
   * - "inactive"
   * - "ready"
   */
  core.String streamStatus;


  LiveStreamStatus();

  LiveStreamStatus.fromJson(core.Map _json) {
    if (_json.containsKey("streamStatus")) {
      streamStatus = _json["streamStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (streamStatus != null) {
      _json["streamStatus"] = streamStatus;
    }
    return _json;
  }
}


/** Represent a property available in different languages. */
class LocalizedProperty {
  /** Default value for the localized property. */
  core.String default_;

  /** The localized values. */
  core.List<LocalizedString> localized;


  LocalizedProperty();

  LocalizedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("default")) {
      default_ = _json["default"];
    }
    if (_json.containsKey("localized")) {
      localized = _json["localized"].map((value) => new LocalizedString.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (default_ != null) {
      _json["default"] = default_;
    }
    if (localized != null) {
      _json["localized"] = localized.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** A localized string. */
class LocalizedString {
  /** Language associated to this value. */
  core.String language;

  /** Value of the property. */
  core.String value;


  LocalizedString();

  LocalizedString.fromJson(core.Map _json) {
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (language != null) {
      _json["language"] = language;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Settings and Info of the monitor stream */
class MonitorStreamInfo {
  /**
   * If you have set the enableMonitorStream property to true, then this
   * property determines the length of the live broadcast delay.
   */
  core.int broadcastStreamDelayMs;

  /** HTML code that embeds a player that plays the monitor stream. */
  core.String embedHtml;

  /**
   * This value determines whether the monitor stream is enabled for the
   * broadcast. If the monitor stream is enabled, then YouTube will broadcast
   * the event content on a special stream intended only for the broadcaster's
   * consumption. The broadcaster can use the stream to review the event content
   * and also to identify the optimal times to insert cuepoints.
   *
   * You need to set this value to true if you intend to have a broadcast delay
   * for your event.
   *
   * Note: This property cannot be updated once the broadcast is in the testing
   * or live state.
   */
  core.bool enableMonitorStream;


  MonitorStreamInfo();

  MonitorStreamInfo.fromJson(core.Map _json) {
    if (_json.containsKey("broadcastStreamDelayMs")) {
      broadcastStreamDelayMs = _json["broadcastStreamDelayMs"];
    }
    if (_json.containsKey("embedHtml")) {
      embedHtml = _json["embedHtml"];
    }
    if (_json.containsKey("enableMonitorStream")) {
      enableMonitorStream = _json["enableMonitorStream"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (broadcastStreamDelayMs != null) {
      _json["broadcastStreamDelayMs"] = broadcastStreamDelayMs;
    }
    if (embedHtml != null) {
      _json["embedHtml"] = embedHtml;
    }
    if (enableMonitorStream != null) {
      _json["enableMonitorStream"] = enableMonitorStream;
    }
    return _json;
  }
}


/**
 * Paging details for lists of resources, including total number of items
 * available and number of resources returned in a single page.
 */
class PageInfo {
  /** The number of results included in the API response. */
  core.int resultsPerPage;

  /** The total number of results in the result set. */
  core.int totalResults;


  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resultsPerPage")) {
      resultsPerPage = _json["resultsPerPage"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resultsPerPage != null) {
      _json["resultsPerPage"] = resultsPerPage;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}


/**
 * A playlist resource represents a YouTube playlist. A playlist is a collection
 * of videos that can be viewed sequentially and shared with other users. A
 * playlist can contain up to 200 videos, and YouTube does not limit the number
 * of playlists that each user creates. By default, playlists are publicly
 * visible to other users, but playlists can be public or private.
 *
 * YouTube also uses playlists to identify special collections of videos for a
 * channel, such as:
 * - uploaded videos
 * - favorite videos
 * - positively rated (liked) videos
 * - watch history
 * - watch later  To be more specific, these lists are associated with a
 * channel, which is a collection of a person, group, or company's videos,
 * playlists, and other YouTube information. You can retrieve the playlist IDs
 * for each of these lists from the  channel resource for a given channel.
 *
 * You can then use the   playlistItems.list method to retrieve any of those
 * lists. You can also add or remove items from those lists by calling the
 * playlistItems.insert and   playlistItems.delete methods.
 */
class Playlist {
  /** The contentDetails object contains information like video count. */
  PlaylistContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the playlist. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#playlist".
   */
  core.String kind;

  /**
   * The player object contains information that you would use to play the
   * playlist in an embedded player.
   */
  PlaylistPlayer player;

  /**
   * The snippet object contains basic details about the playlist, such as its
   * title and description.
   */
  PlaylistSnippet snippet;

  /** The status object contains status information for the playlist. */
  PlaylistStatus status;


  Playlist();

  Playlist.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new PlaylistContentDetails.fromJson(_json["contentDetails"]);
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
    if (_json.containsKey("player")) {
      player = new PlaylistPlayer.fromJson(_json["player"]);
    }
    if (_json.containsKey("snippet")) {
      snippet = new PlaylistSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("status")) {
      status = new PlaylistStatus.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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
    if (player != null) {
      _json["player"] = (player).toJson();
    }
    if (snippet != null) {
      _json["snippet"] = (snippet).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistContentDetails {
  /** The number of videos in the playlist. */
  core.int itemCount;


  PlaylistContentDetails();

  PlaylistContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("itemCount")) {
      itemCount = _json["itemCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (itemCount != null) {
      _json["itemCount"] = itemCount;
    }
    return _json;
  }
}


/**
 * A playlistItem resource identifies another resource, such as a video, that is
 * included in a playlist. In addition, the playlistItem  resource contains
 * details about the included resource that pertain specifically to how that
 * resource is used in that playlist.
 *
 * YouTube uses playlists to identify special collections of videos for a
 * channel, such as:
 * - uploaded videos
 * - favorite videos
 * - positively rated (liked) videos
 * - watch history
 * - watch later  To be more specific, these lists are associated with a
 * channel, which is a collection of a person, group, or company's videos,
 * playlists, and other YouTube information.
 *
 * You can retrieve the playlist IDs for each of these lists from the  channel
 * resource  for a given channel. You can then use the   playlistItems.list
 * method to retrieve any of those lists. You can also add or remove items from
 * those lists by calling the   playlistItems.insert and   playlistItems.delete
 * methods. For example, if a user gives a positive rating to a video, you would
 * insert that video into the liked videos playlist for that user's channel.
 */
class PlaylistItem {
  /**
   * The contentDetails object is included in the resource if the included item
   * is a YouTube video. The object contains additional information about the
   * video.
   */
  PlaylistItemContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the playlist item. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#playlistItem".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the playlist item, such as
   * its title and position in the playlist.
   */
  PlaylistItemSnippet snippet;

  /**
   * The status object contains information about the playlist item's privacy
   * status.
   */
  PlaylistItemStatus status;


  PlaylistItem();

  PlaylistItem.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new PlaylistItemContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new PlaylistItemSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("status")) {
      status = new PlaylistItemStatus.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistItemContentDetails {
  /**
   * The time, measured in seconds from the start of the video, when the video
   * should stop playing. (The playlist owner can specify the times when the
   * video should start and stop playing when the video is played in the context
   * of the playlist.) By default, assume that the video.endTime is the end of
   * the video.
   */
  core.String endAt;

  /** A user-generated note for this item. */
  core.String note;

  /**
   * The time, measured in seconds from the start of the video, when the video
   * should start playing. (The playlist owner can specify the times when the
   * video should start and stop playing when the video is played in the context
   * of the playlist.) The default value is 0.
   */
  core.String startAt;

  /**
   * The ID that YouTube uses to uniquely identify a video. To retrieve the
   * video resource, set the id query parameter to this value in your API
   * request.
   */
  core.String videoId;


  PlaylistItemContentDetails();

  PlaylistItemContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("endAt")) {
      endAt = _json["endAt"];
    }
    if (_json.containsKey("note")) {
      note = _json["note"];
    }
    if (_json.containsKey("startAt")) {
      startAt = _json["startAt"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endAt != null) {
      _json["endAt"] = endAt;
    }
    if (note != null) {
      _json["note"] = note;
    }
    if (startAt != null) {
      _json["startAt"] = startAt;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistItemListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of playlist items that match the request criteria. */
  core.List<PlaylistItem> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#playlistItemListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  PlaylistItemListResponse();

  PlaylistItemListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new PlaylistItem.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about a playlist, including title, description and thumbnails.
 */
class PlaylistItemSnippet {
  /**
   * The ID that YouTube uses to uniquely identify the user that added the item
   * to the playlist.
   */
  core.String channelId;

  /** Channel title for the channel that the playlist item belongs to. */
  core.String channelTitle;

  /** The item's description. */
  core.String description;

  /**
   * The ID that YouTube uses to uniquely identify the playlist that the
   * playlist item is in.
   */
  core.String playlistId;

  /**
   * The order in which the item appears in the playlist. The value uses a
   * zero-based index, so the first item has a position of 0, the second item
   * has a position of 1, and so forth.
   */
  core.int position;

  /**
   * The date and time that the item was added to the playlist. The value is
   * specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * The id object contains information that can be used to uniquely identify
   * the resource that is included in the playlist as the playlist item.
   */
  ResourceId resourceId;

  /**
   * A map of thumbnail images associated with the playlist item. For each
   * object in the map, the key is the name of the thumbnail image, and the
   * value is an object that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The item's title. */
  core.String title;


  PlaylistItemSnippet();

  PlaylistItemSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("playlistId")) {
      playlistId = _json["playlistId"];
    }
    if (_json.containsKey("position")) {
      position = _json["position"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (playlistId != null) {
      _json["playlistId"] = playlistId;
    }
    if (position != null) {
      _json["position"] = position;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Information about the playlist item's privacy status. */
class PlaylistItemStatus {
  /**
   * This resource's privacy status.
   * Possible string values are:
   * - "private"
   * - "public"
   * - "unlisted"
   */
  core.String privacyStatus;


  PlaylistItemStatus();

  PlaylistItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey("privacyStatus")) {
      privacyStatus = _json["privacyStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (privacyStatus != null) {
      _json["privacyStatus"] = privacyStatus;
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of playlists that match the request criteria. */
  core.List<Playlist> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#playlistListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  PlaylistListResponse();

  PlaylistListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Playlist.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistPlayer {
  /** An <iframe> tag that embeds a player that will play the playlist. */
  core.String embedHtml;


  PlaylistPlayer();

  PlaylistPlayer.fromJson(core.Map _json) {
    if (_json.containsKey("embedHtml")) {
      embedHtml = _json["embedHtml"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (embedHtml != null) {
      _json["embedHtml"] = embedHtml;
    }
    return _json;
  }
}


/**
 * Basic details about a playlist, including title, description and thumbnails.
 */
class PlaylistSnippet {
  /**
   * The ID that YouTube uses to uniquely identify the channel that published
   * the playlist.
   */
  core.String channelId;

  /** The channel title of the channel that the video belongs to. */
  core.String channelTitle;

  /** The playlist's description. */
  core.String description;

  /**
   * The date and time that the playlist was created. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /** Keyword tags associated with the playlist. */
  core.List<core.String> tags;

  /**
   * A map of thumbnail images associated with the playlist. For each object in
   * the map, the key is the name of the thumbnail image, and the value is an
   * object that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The playlist's title. */
  core.String title;


  PlaylistSnippet();

  PlaylistSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Not documented yet. */
class PlaylistStatus {
  /**
   * The playlist's privacy status.
   * Possible string values are:
   * - "private"
   * - "public"
   * - "unlisted"
   */
  core.String privacyStatus;


  PlaylistStatus();

  PlaylistStatus.fromJson(core.Map _json) {
    if (_json.containsKey("privacyStatus")) {
      privacyStatus = _json["privacyStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (privacyStatus != null) {
      _json["privacyStatus"] = privacyStatus;
    }
    return _json;
  }
}


/** Describes a single promoted item. */
class PromotedItem {
  /**
   * A custom message to display for this promotion. This field is currently
   * ignored unless the promoted item is a website.
   */
  core.String customMessage;

  /** Identifies the promoted item. */
  PromotedItemId id;

  /**
   * If true, the content owner's name will be used when displaying the
   * promotion. This field can only be set when the update is made on behalf of
   * the content owner.
   */
  core.bool promotedByContentOwner;

  /**
   * The temporal position within the video where the promoted item will be
   * displayed. If present, it overrides the default timing.
   */
  InvideoTiming timing;


  PromotedItem();

  PromotedItem.fromJson(core.Map _json) {
    if (_json.containsKey("customMessage")) {
      customMessage = _json["customMessage"];
    }
    if (_json.containsKey("id")) {
      id = new PromotedItemId.fromJson(_json["id"]);
    }
    if (_json.containsKey("promotedByContentOwner")) {
      promotedByContentOwner = _json["promotedByContentOwner"];
    }
    if (_json.containsKey("timing")) {
      timing = new InvideoTiming.fromJson(_json["timing"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (customMessage != null) {
      _json["customMessage"] = customMessage;
    }
    if (id != null) {
      _json["id"] = (id).toJson();
    }
    if (promotedByContentOwner != null) {
      _json["promotedByContentOwner"] = promotedByContentOwner;
    }
    if (timing != null) {
      _json["timing"] = (timing).toJson();
    }
    return _json;
  }
}


/**
 * Describes a single promoted item id. It is a union of various possible types.
 */
class PromotedItemId {
  /**
   * If type is recentUpload, this field identifies the channel from which to
   * take the recent upload. If missing, the channel is assumed to be the same
   * channel for which the invideoPromotion is set.
   */
  core.String recentlyUploadedBy;

  /**
   * Describes the type of the promoted item.
   * Possible string values are:
   * - "recentUpload"
   * - "video"
   * - "website"
   */
  core.String type;

  /**
   * If the promoted item represents a video, this field represents the unique
   * YouTube ID identifying it. This field will be present only if type has the
   * value video.
   */
  core.String videoId;

  /**
   * If the promoted item represents a website, this field represents the url
   * pointing to the website. This field will be present only if type has the
   * value website.
   */
  core.String websiteUrl;


  PromotedItemId();

  PromotedItemId.fromJson(core.Map _json) {
    if (_json.containsKey("recentlyUploadedBy")) {
      recentlyUploadedBy = _json["recentlyUploadedBy"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
    if (_json.containsKey("websiteUrl")) {
      websiteUrl = _json["websiteUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (recentlyUploadedBy != null) {
      _json["recentlyUploadedBy"] = recentlyUploadedBy;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    if (websiteUrl != null) {
      _json["websiteUrl"] = websiteUrl;
    }
    return _json;
  }
}


/** A pair Property / Value. */
class PropertyValue {
  /** A property. */
  core.String property;

  /** The property's value. */
  core.String value;


  PropertyValue();

  PropertyValue.fromJson(core.Map _json) {
    if (_json.containsKey("property")) {
      property = _json["property"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (property != null) {
      _json["property"] = property;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/**
 * A resource id is a generic reference that points to another YouTube resource.
 */
class ResourceId {
  /**
   * The ID that YouTube uses to uniquely identify the referred resource, if
   * that resource is a channel. This property is only present if the
   * resourceId.kind value is youtube#channel.
   */
  core.String channelId;

  /** The type of the API resource. */
  core.String kind;

  /**
   * The ID that YouTube uses to uniquely identify the referred resource, if
   * that resource is a playlist. This property is only present if the
   * resourceId.kind value is youtube#playlist.
   */
  core.String playlistId;

  /**
   * The ID that YouTube uses to uniquely identify the referred resource, if
   * that resource is a video. This property is only present if the
   * resourceId.kind value is youtube#video.
   */
  core.String videoId;


  ResourceId();

  ResourceId.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("playlistId")) {
      playlistId = _json["playlistId"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (playlistId != null) {
      _json["playlistId"] = playlistId;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}


/** Not documented yet. */
class SearchListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of results that match the search criteria. */
  core.List<SearchResult> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#searchListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  SearchListResponse();

  SearchListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new SearchResult.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * A search result contains information about a YouTube video, channel, or
 * playlist that matches the search parameters specified in an API request.
 * While a search result points to a uniquely identifiable resource, like a
 * video, it does not have its own persistent data.
 */
class SearchResult {
  /** Etag of this resource. */
  core.String etag;

  /**
   * The id object contains information that can be used to uniquely identify
   * the resource that matches the search request.
   */
  ResourceId id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#searchResult".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about a search result, such as
   * its title or description. For example, if the search result is a video,
   * then the title will be the video's title and the description will be the
   * video's description.
   */
  SearchResultSnippet snippet;


  SearchResult();

  SearchResult.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = new ResourceId.fromJson(_json["id"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("snippet")) {
      snippet = new SearchResultSnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = (id).toJson();
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


/**
 * Basic details about a search result, including title, description and
 * thumbnails of the item referenced by the search result.
 */
class SearchResultSnippet {
  /**
   * The value that YouTube uses to uniquely identify the channel that published
   * the resource that the search result identifies.
   */
  core.String channelId;

  /**
   * The title of the channel that published the resource that the search result
   * identifies.
   */
  core.String channelTitle;

  /** A description of the search result. */
  core.String description;

  /**
   * It indicates if the resource (video or channel) has upcoming/active live
   * broadcast content. Or it's "none" if there is not any upcoming/active live
   * broadcasts.
   * Possible string values are:
   * - "live"
   * - "none"
   * - "upcoming"
   */
  core.String liveBroadcastContent;

  /**
   * The creation date and time of the resource that the search result
   * identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
   * format.
   */
  core.DateTime publishedAt;

  /**
   * A map of thumbnail images associated with the search result. For each
   * object in the map, the key is the name of the thumbnail image, and the
   * value is an object that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The title of the search result. */
  core.String title;


  SearchResultSnippet();

  SearchResultSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("liveBroadcastContent")) {
      liveBroadcastContent = _json["liveBroadcastContent"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (liveBroadcastContent != null) {
      _json["liveBroadcastContent"] = liveBroadcastContent;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/**
 * A subscription resource contains information about a YouTube user
 * subscription. A subscription notifies a user when new videos are added to a
 * channel or when another user takes one of several actions on YouTube, such as
 * uploading a video, rating a video, or commenting on a video.
 */
class Subscription {
  /**
   * The contentDetails object contains basic statistics about the subscription.
   */
  SubscriptionContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the subscription. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#subscription".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the subscription, including
   * its title and the channel that the user subscribed to.
   */
  SubscriptionSnippet snippet;

  /**
   * The subscriberSnippet object contains basic details about the sbuscriber.
   */
  SubscriptionSubscriberSnippet subscriberSnippet;


  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey("contentDetails")) {
      contentDetails = new SubscriptionContentDetails.fromJson(_json["contentDetails"]);
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
      snippet = new SubscriptionSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("subscriberSnippet")) {
      subscriberSnippet = new SubscriptionSubscriberSnippet.fromJson(_json["subscriberSnippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
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
    if (subscriberSnippet != null) {
      _json["subscriberSnippet"] = (subscriberSnippet).toJson();
    }
    return _json;
  }
}


/** Details about the content to witch a subscription refers. */
class SubscriptionContentDetails {
  /**
   * The type of activity this subscription is for (only uploads, everything).
   * Possible string values are:
   * - "all"
   * - "uploads"
   */
  core.String activityType;

  /**
   * The number of new items in the subscription since its content was last
   * read.
   */
  core.int newItemCount;

  /** The approximate number of items that the subscription points to. */
  core.int totalItemCount;


  SubscriptionContentDetails();

  SubscriptionContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("activityType")) {
      activityType = _json["activityType"];
    }
    if (_json.containsKey("newItemCount")) {
      newItemCount = _json["newItemCount"];
    }
    if (_json.containsKey("totalItemCount")) {
      totalItemCount = _json["totalItemCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (activityType != null) {
      _json["activityType"] = activityType;
    }
    if (newItemCount != null) {
      _json["newItemCount"] = newItemCount;
    }
    if (totalItemCount != null) {
      _json["totalItemCount"] = totalItemCount;
    }
    return _json;
  }
}


/** Not documented yet. */
class SubscriptionListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of subscriptions that match the request criteria. */
  core.List<Subscription> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#subscriptionListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  SubscriptionListResponse();

  SubscriptionListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Subscription.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/**
 * Basic details about a subscription, including title, description and
 * thumbnails of the subscribed item.
 */
class SubscriptionSnippet {
  /**
   * The ID that YouTube uses to uniquely identify the subscriber's channel.
   */
  core.String channelId;

  /** Channel title for the channel that the subscription belongs to. */
  core.String channelTitle;

  /** The subscription's details. */
  core.String description;

  /**
   * The date and time that the subscription was created. The value is specified
   * in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * The id object contains information about the channel that the user
   * subscribed to.
   */
  ResourceId resourceId;

  /**
   * A map of thumbnail images associated with the video. For each object in the
   * map, the key is the name of the thumbnail image, and the value is an object
   * that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The subscription's title. */
  core.String title;


  SubscriptionSnippet();

  SubscriptionSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(_json["resourceId"]);
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (resourceId != null) {
      _json["resourceId"] = (resourceId).toJson();
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/**
 * Basic details about a subscription's subscriber including title, description,
 * channel ID and thumbnails.
 */
class SubscriptionSubscriberSnippet {
  /** The channel ID of the subscriber. */
  core.String channelId;

  /** The description of the subscriber. */
  core.String description;

  /** Thumbnails for this subscriber. */
  ThumbnailDetails thumbnails;

  /** The title of the subscriber. */
  core.String title;


  SubscriptionSubscriberSnippet();

  SubscriptionSubscriberSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** A thumbnail is an image representing a YouTube resource. */
class Thumbnail {
  /** (Optional) Height of the thumbnail image. */
  core.int height;

  /** The thumbnail image's URL. */
  core.String url;

  /** (Optional) Width of the thumbnail image. */
  core.int width;


  Thumbnail();

  Thumbnail.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (height != null) {
      _json["height"] = height;
    }
    if (url != null) {
      _json["url"] = url;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}


/** Internal representation of thumbnails for a YouTube resource. */
class ThumbnailDetails {
  /** The default image for this resource. */
  Thumbnail default_;

  /** The high quality image for this resource. */
  Thumbnail high;

  /** The maximum resolution quality image for this resource. */
  Thumbnail maxres;

  /** The medium quality image for this resource. */
  Thumbnail medium;

  /** The standard quality image for this resource. */
  Thumbnail standard;


  ThumbnailDetails();

  ThumbnailDetails.fromJson(core.Map _json) {
    if (_json.containsKey("default")) {
      default_ = new Thumbnail.fromJson(_json["default"]);
    }
    if (_json.containsKey("high")) {
      high = new Thumbnail.fromJson(_json["high"]);
    }
    if (_json.containsKey("maxres")) {
      maxres = new Thumbnail.fromJson(_json["maxres"]);
    }
    if (_json.containsKey("medium")) {
      medium = new Thumbnail.fromJson(_json["medium"]);
    }
    if (_json.containsKey("standard")) {
      standard = new Thumbnail.fromJson(_json["standard"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (default_ != null) {
      _json["default"] = (default_).toJson();
    }
    if (high != null) {
      _json["high"] = (high).toJson();
    }
    if (maxres != null) {
      _json["maxres"] = (maxres).toJson();
    }
    if (medium != null) {
      _json["medium"] = (medium).toJson();
    }
    if (standard != null) {
      _json["standard"] = (standard).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class ThumbnailSetResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of thumbnails. */
  core.List<ThumbnailDetails> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#thumbnailSetResponse".
   */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  ThumbnailSetResponse();

  ThumbnailSetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ThumbnailDetails.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Stub token pagination template to suppress results. */
class TokenPagination {

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** A video resource represents a YouTube video. */
class Video {
  /** Age restriction details related to a video. */
  VideoAgeGating ageGating;

  /**
   * The contentDetails object contains information about the video content,
   * including the length of the video and its aspect ratio.
   */
  VideoContentDetails contentDetails;

  /**
   * The conversionPings object encapsulates information about url pings that
   * need to be respected by the App in different video contexts.
   */
  VideoConversionPings conversionPings;

  /** Etag of this resource. */
  core.String etag;

  /**
   * The fileDetails object encapsulates information about the video file that
   * was uploaded to YouTube, including the file's resolution, duration, audio
   * and video codecs, stream bitrates, and more. This data can only be
   * retrieved by the video owner.
   */
  VideoFileDetails fileDetails;

  /** The ID that YouTube uses to uniquely identify the video. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#video".
   */
  core.String kind;

  /**
   * The liveStreamingDetails object contains metadata about a live video
   * broadcast. The object will only be present in a video resource if the video
   * is an upcoming, live, or completed live broadcast.
   */
  VideoLiveStreamingDetails liveStreamingDetails;

  /**
   * The monetizationDetails object encapsulates information about the
   * monetization status of the video.
   */
  VideoMonetizationDetails monetizationDetails;

  /**
   * The player object contains information that you would use to play the video
   * in an embedded player.
   */
  VideoPlayer player;

  /**
   * The processingProgress object encapsulates information about YouTube's
   * progress in processing the uploaded video file. The properties in the
   * object identify the current processing status and an estimate of the time
   * remaining until YouTube finishes processing the video. This part also
   * indicates whether different types of data or content, such as file details
   * or thumbnail images, are available for the video.
   *
   * The processingProgress object is designed to be polled so that the video
   * uploaded can track the progress that YouTube has made in processing the
   * uploaded video file. This data can only be retrieved by the video owner.
   */
  VideoProcessingDetails processingDetails;

  /**
   * The projectDetails object contains information about the project specific
   * video metadata.
   */
  VideoProjectDetails projectDetails;

  /**
   * The recordingDetails object encapsulates information about the location,
   * date and address where the video was recorded.
   */
  VideoRecordingDetails recordingDetails;

  /**
   * The snippet object contains basic details about the video, such as its
   * title, description, and category.
   */
  VideoSnippet snippet;

  /** The statistics object contains statistics about the video. */
  VideoStatistics statistics;

  /**
   * The status object contains information about the video's uploading,
   * processing, and privacy statuses.
   */
  VideoStatus status;

  /**
   * The suggestions object encapsulates suggestions that identify opportunities
   * to improve the video quality or the metadata for the uploaded video. This
   * data can only be retrieved by the video owner.
   */
  VideoSuggestions suggestions;

  /**
   * The topicDetails object encapsulates information about Freebase topics
   * associated with the video.
   */
  VideoTopicDetails topicDetails;


  Video();

  Video.fromJson(core.Map _json) {
    if (_json.containsKey("ageGating")) {
      ageGating = new VideoAgeGating.fromJson(_json["ageGating"]);
    }
    if (_json.containsKey("contentDetails")) {
      contentDetails = new VideoContentDetails.fromJson(_json["contentDetails"]);
    }
    if (_json.containsKey("conversionPings")) {
      conversionPings = new VideoConversionPings.fromJson(_json["conversionPings"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fileDetails")) {
      fileDetails = new VideoFileDetails.fromJson(_json["fileDetails"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("liveStreamingDetails")) {
      liveStreamingDetails = new VideoLiveStreamingDetails.fromJson(_json["liveStreamingDetails"]);
    }
    if (_json.containsKey("monetizationDetails")) {
      monetizationDetails = new VideoMonetizationDetails.fromJson(_json["monetizationDetails"]);
    }
    if (_json.containsKey("player")) {
      player = new VideoPlayer.fromJson(_json["player"]);
    }
    if (_json.containsKey("processingDetails")) {
      processingDetails = new VideoProcessingDetails.fromJson(_json["processingDetails"]);
    }
    if (_json.containsKey("projectDetails")) {
      projectDetails = new VideoProjectDetails.fromJson(_json["projectDetails"]);
    }
    if (_json.containsKey("recordingDetails")) {
      recordingDetails = new VideoRecordingDetails.fromJson(_json["recordingDetails"]);
    }
    if (_json.containsKey("snippet")) {
      snippet = new VideoSnippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("statistics")) {
      statistics = new VideoStatistics.fromJson(_json["statistics"]);
    }
    if (_json.containsKey("status")) {
      status = new VideoStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("suggestions")) {
      suggestions = new VideoSuggestions.fromJson(_json["suggestions"]);
    }
    if (_json.containsKey("topicDetails")) {
      topicDetails = new VideoTopicDetails.fromJson(_json["topicDetails"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ageGating != null) {
      _json["ageGating"] = (ageGating).toJson();
    }
    if (contentDetails != null) {
      _json["contentDetails"] = (contentDetails).toJson();
    }
    if (conversionPings != null) {
      _json["conversionPings"] = (conversionPings).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fileDetails != null) {
      _json["fileDetails"] = (fileDetails).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (liveStreamingDetails != null) {
      _json["liveStreamingDetails"] = (liveStreamingDetails).toJson();
    }
    if (monetizationDetails != null) {
      _json["monetizationDetails"] = (monetizationDetails).toJson();
    }
    if (player != null) {
      _json["player"] = (player).toJson();
    }
    if (processingDetails != null) {
      _json["processingDetails"] = (processingDetails).toJson();
    }
    if (projectDetails != null) {
      _json["projectDetails"] = (projectDetails).toJson();
    }
    if (recordingDetails != null) {
      _json["recordingDetails"] = (recordingDetails).toJson();
    }
    if (snippet != null) {
      _json["snippet"] = (snippet).toJson();
    }
    if (statistics != null) {
      _json["statistics"] = (statistics).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (suggestions != null) {
      _json["suggestions"] = (suggestions).toJson();
    }
    if (topicDetails != null) {
      _json["topicDetails"] = (topicDetails).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class VideoAgeGating {
  /**
   * Indicates whether or not the video has alcoholic beverage content. Only
   * users of legal purchasing age in a particular country, as identified by
   * ICAP, can view the content.
   */
  core.bool alcoholContent;

  /**
   * Age-restricted trailers. For redband trailers and adult-rated video-games.
   * Only users aged 18+ can view the content. The the field is true the content
   * is restricted to viewers aged 18+. Otherwise The field won't be present.
   */
  core.bool restricted;

  /**
   * Video game rating, if any.
   * Possible string values are:
   * - "anyone"
   * - "m15Plus"
   * - "m16Plus"
   * - "m17Plus"
   */
  core.String videoGameRating;


  VideoAgeGating();

  VideoAgeGating.fromJson(core.Map _json) {
    if (_json.containsKey("alcoholContent")) {
      alcoholContent = _json["alcoholContent"];
    }
    if (_json.containsKey("restricted")) {
      restricted = _json["restricted"];
    }
    if (_json.containsKey("videoGameRating")) {
      videoGameRating = _json["videoGameRating"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alcoholContent != null) {
      _json["alcoholContent"] = alcoholContent;
    }
    if (restricted != null) {
      _json["restricted"] = restricted;
    }
    if (videoGameRating != null) {
      _json["videoGameRating"] = videoGameRating;
    }
    return _json;
  }
}


/**
 * A videoCategory resource identifies a category that has been or could be
 * associated with uploaded videos.
 */
class VideoCategory {
  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the video category. */
  core.String id;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#videoCategory".
   */
  core.String kind;

  /**
   * The snippet object contains basic details about the video category,
   * including its title.
   */
  VideoCategorySnippet snippet;


  VideoCategory();

  VideoCategory.fromJson(core.Map _json) {
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
      snippet = new VideoCategorySnippet.fromJson(_json["snippet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class VideoCategoryListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /**
   * A list of video categories that can be associated with YouTube videos. In
   * this map, the video category ID is the map key, and its value is the
   * corresponding videoCategory resource.
   */
  core.List<VideoCategory> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#videoCategoryListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  VideoCategoryListResponse();

  VideoCategoryListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new VideoCategory.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Basic details about a video category, such as its localized title. */
class VideoCategorySnippet {
  /** Not documented yet. */
  core.bool assignable;

  /** The YouTube channel that created the video category. */
  core.String channelId;

  /** The video category's title. */
  core.String title;


  VideoCategorySnippet();

  VideoCategorySnippet.fromJson(core.Map _json) {
    if (_json.containsKey("assignable")) {
      assignable = _json["assignable"];
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (assignable != null) {
      _json["assignable"] = assignable;
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Details about the content of a YouTube Video. */
class VideoContentDetails {
  /**
   * The value of captions indicates whether the video has captions or not.
   * Possible string values are:
   * - "false"
   * - "true"
   */
  core.String caption;

  /**
   * Specifies the ratings that the video received under various rating schemes.
   */
  ContentRating contentRating;

  /**
   * The countryRestriction object contains information about the countries
   * where a video is (or is not) viewable.
   */
  AccessPolicy countryRestriction;

  /**
   * The value of definition indicates whether the video is available in high
   * definition or only in standard definition.
   * Possible string values are:
   * - "hd"
   * - "sd"
   */
  core.String definition;

  /**
   * The value of dimension indicates whether the video is available in 3D or in
   * 2D.
   */
  core.String dimension;

  /**
   * The length of the video. The tag value is an ISO 8601 duration in the
   * format PT#M#S, in which the letters PT indicate that the value specifies a
   * period of time, and the letters M and S refer to length in minutes and
   * seconds, respectively. The # characters preceding the M and S letters are
   * both integers that specify the number of minutes (or seconds) of the video.
   * For example, a value of PT15M51S indicates that the video is 15 minutes and
   * 51 seconds long.
   */
  core.String duration;

  /**
   * The value of is_license_content indicates whether the video is licensed
   * content.
   */
  core.bool licensedContent;

  /**
   * The regionRestriction object contains information about the countries where
   * a video is (or is not) viewable. The object will contain either the
   * contentDetails.regionRestriction.allowed property or the
   * contentDetails.regionRestriction.blocked property.
   */
  VideoContentDetailsRegionRestriction regionRestriction;


  VideoContentDetails();

  VideoContentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("caption")) {
      caption = _json["caption"];
    }
    if (_json.containsKey("contentRating")) {
      contentRating = new ContentRating.fromJson(_json["contentRating"]);
    }
    if (_json.containsKey("countryRestriction")) {
      countryRestriction = new AccessPolicy.fromJson(_json["countryRestriction"]);
    }
    if (_json.containsKey("definition")) {
      definition = _json["definition"];
    }
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("licensedContent")) {
      licensedContent = _json["licensedContent"];
    }
    if (_json.containsKey("regionRestriction")) {
      regionRestriction = new VideoContentDetailsRegionRestriction.fromJson(_json["regionRestriction"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (caption != null) {
      _json["caption"] = caption;
    }
    if (contentRating != null) {
      _json["contentRating"] = (contentRating).toJson();
    }
    if (countryRestriction != null) {
      _json["countryRestriction"] = (countryRestriction).toJson();
    }
    if (definition != null) {
      _json["definition"] = definition;
    }
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (licensedContent != null) {
      _json["licensedContent"] = licensedContent;
    }
    if (regionRestriction != null) {
      _json["regionRestriction"] = (regionRestriction).toJson();
    }
    return _json;
  }
}


/** DEPRECATED Region restriction of the video. */
class VideoContentDetailsRegionRestriction {
  /**
   * A list of region codes that identify countries where the video is viewable.
   * If this property is present and a country is not listed in its value, then
   * the video is blocked from appearing in that country. If this property is
   * present and contains an empty list, the video is blocked in all countries.
   */
  core.List<core.String> allowed;

  /**
   * A list of region codes that identify countries where the video is blocked.
   * If this property is present and a country is not listed in its value, then
   * the video is viewable in that country. If this property is present and
   * contains an empty list, the video is viewable in all countries.
   */
  core.List<core.String> blocked;


  VideoContentDetailsRegionRestriction();

  VideoContentDetailsRegionRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("allowed")) {
      allowed = _json["allowed"];
    }
    if (_json.containsKey("blocked")) {
      blocked = _json["blocked"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowed != null) {
      _json["allowed"] = allowed;
    }
    if (blocked != null) {
      _json["blocked"] = blocked;
    }
    return _json;
  }
}


/** Not documented yet. */
class VideoConversionPing {
  /**
   * Defines the context of the ping.
   * Possible string values are:
   * - "comment"
   * - "dislike"
   * - "like"
   * - "share"
   */
  core.String context;

  /**
   * The url (without the schema) that the app shall send the ping to. It's at
   * caller's descretion to decide which schema to use (http vs https) Example
   * of a returned url: //googleads.g.doubleclick.net/pagead/
   * viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D
   * like%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA%3Bytvid%3DUrIaJUvIQDg&labe=default
   * The caller must append biscotti authentication (ms param in case of mobile,
   * for example) to this ping.
   */
  core.String conversionUrl;


  VideoConversionPing();

  VideoConversionPing.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("conversionUrl")) {
      conversionUrl = _json["conversionUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (context != null) {
      _json["context"] = context;
    }
    if (conversionUrl != null) {
      _json["conversionUrl"] = conversionUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class VideoConversionPings {
  /**
   * Pings that the app shall fire for a video (authenticated by biscotti
   * cookie). Each ping has a context, in which the app must fire the ping, and
   * a url identifying the ping.
   */
  core.List<VideoConversionPing> pings;


  VideoConversionPings();

  VideoConversionPings.fromJson(core.Map _json) {
    if (_json.containsKey("pings")) {
      pings = _json["pings"].map((value) => new VideoConversionPing.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pings != null) {
      _json["pings"] = pings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * Describes original video file properties, including technical details about
 * audio and video streams, but also metadata information like content length,
 * digitization time, or geotagging information.
 */
class VideoFileDetails {
  /**
   * A list of audio streams contained in the uploaded video file. Each item in
   * the list contains detailed metadata about an audio stream.
   */
  core.List<VideoFileDetailsAudioStream> audioStreams;

  /**
   * The uploaded video file's combined (video and audio) bitrate in bits per
   * second.
   */
  core.String bitrateBps;

  /** The uploaded video file's container format. */
  core.String container;

  /**
   * The date and time when the uploaded video file was created. The value is
   * specified in ISO 8601 format. Currently, the following ISO 8601 formats are
   * supported:
   * - Date only: YYYY-MM-DD
   * - Naive time: YYYY-MM-DDTHH:MM:SS
   * - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
   */
  core.String creationTime;

  /** The length of the uploaded video in milliseconds. */
  core.String durationMs;

  /**
   * The uploaded file's name. This field is present whether a video file or
   * another type of file was uploaded.
   */
  core.String fileName;

  /**
   * The uploaded file's size in bytes. This field is present whether a video
   * file or another type of file was uploaded.
   */
  core.String fileSize;

  /**
   * The uploaded file's type as detected by YouTube's video processing engine.
   * Currently, YouTube only processes video files, but this field is present
   * whether a video file or another type of file was uploaded.
   * Possible string values are:
   * - "archive"
   * - "audio"
   * - "document"
   * - "image"
   * - "other"
   * - "project"
   * - "video"
   */
  core.String fileType;

  /**
   * Geographic coordinates that identify the place where the uploaded video was
   * recorded. Coordinates are defined using WGS 84.
   */
  GeoPoint recordingLocation;

  /**
   * A list of video streams contained in the uploaded video file. Each item in
   * the list contains detailed metadata about a video stream.
   */
  core.List<VideoFileDetailsVideoStream> videoStreams;


  VideoFileDetails();

  VideoFileDetails.fromJson(core.Map _json) {
    if (_json.containsKey("audioStreams")) {
      audioStreams = _json["audioStreams"].map((value) => new VideoFileDetailsAudioStream.fromJson(value)).toList();
    }
    if (_json.containsKey("bitrateBps")) {
      bitrateBps = _json["bitrateBps"];
    }
    if (_json.containsKey("container")) {
      container = _json["container"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("durationMs")) {
      durationMs = _json["durationMs"];
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("fileSize")) {
      fileSize = _json["fileSize"];
    }
    if (_json.containsKey("fileType")) {
      fileType = _json["fileType"];
    }
    if (_json.containsKey("recordingLocation")) {
      recordingLocation = new GeoPoint.fromJson(_json["recordingLocation"]);
    }
    if (_json.containsKey("videoStreams")) {
      videoStreams = _json["videoStreams"].map((value) => new VideoFileDetailsVideoStream.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (audioStreams != null) {
      _json["audioStreams"] = audioStreams.map((value) => (value).toJson()).toList();
    }
    if (bitrateBps != null) {
      _json["bitrateBps"] = bitrateBps;
    }
    if (container != null) {
      _json["container"] = container;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (durationMs != null) {
      _json["durationMs"] = durationMs;
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (fileSize != null) {
      _json["fileSize"] = fileSize;
    }
    if (fileType != null) {
      _json["fileType"] = fileType;
    }
    if (recordingLocation != null) {
      _json["recordingLocation"] = (recordingLocation).toJson();
    }
    if (videoStreams != null) {
      _json["videoStreams"] = videoStreams.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Information about an audio stream. */
class VideoFileDetailsAudioStream {
  /** The audio stream's bitrate, in bits per second. */
  core.String bitrateBps;

  /** The number of audio channels that the stream contains. */
  core.int channelCount;

  /** The audio codec that the stream uses. */
  core.String codec;

  /**
   * A value that uniquely identifies a video vendor. Typically, the value is a
   * four-letter vendor code.
   */
  core.String vendor;


  VideoFileDetailsAudioStream();

  VideoFileDetailsAudioStream.fromJson(core.Map _json) {
    if (_json.containsKey("bitrateBps")) {
      bitrateBps = _json["bitrateBps"];
    }
    if (_json.containsKey("channelCount")) {
      channelCount = _json["channelCount"];
    }
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("vendor")) {
      vendor = _json["vendor"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bitrateBps != null) {
      _json["bitrateBps"] = bitrateBps;
    }
    if (channelCount != null) {
      _json["channelCount"] = channelCount;
    }
    if (codec != null) {
      _json["codec"] = codec;
    }
    if (vendor != null) {
      _json["vendor"] = vendor;
    }
    return _json;
  }
}


/** Information about a video stream. */
class VideoFileDetailsVideoStream {
  /**
   * The video content's display aspect ratio, which specifies the aspect ratio
   * in which the video should be displayed.
   */
  core.double aspectRatio;

  /** The video stream's bitrate, in bits per second. */
  core.String bitrateBps;

  /** The video codec that the stream uses. */
  core.String codec;

  /** The video stream's frame rate, in frames per second. */
  core.double frameRateFps;

  /** The encoded video content's height in pixels. */
  core.int heightPixels;

  /**
   * The amount that YouTube needs to rotate the original source content to
   * properly display the video.
   * Possible string values are:
   * - "clockwise"
   * - "counterClockwise"
   * - "none"
   * - "other"
   * - "upsideDown"
   */
  core.String rotation;

  /**
   * A value that uniquely identifies a video vendor. Typically, the value is a
   * four-letter vendor code.
   */
  core.String vendor;

  /**
   * The encoded video content's width in pixels. You can calculate the video's
   * encoding aspect ratio as width_pixels / height_pixels.
   */
  core.int widthPixels;


  VideoFileDetailsVideoStream();

  VideoFileDetailsVideoStream.fromJson(core.Map _json) {
    if (_json.containsKey("aspectRatio")) {
      aspectRatio = _json["aspectRatio"];
    }
    if (_json.containsKey("bitrateBps")) {
      bitrateBps = _json["bitrateBps"];
    }
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("frameRateFps")) {
      frameRateFps = _json["frameRateFps"];
    }
    if (_json.containsKey("heightPixels")) {
      heightPixels = _json["heightPixels"];
    }
    if (_json.containsKey("rotation")) {
      rotation = _json["rotation"];
    }
    if (_json.containsKey("vendor")) {
      vendor = _json["vendor"];
    }
    if (_json.containsKey("widthPixels")) {
      widthPixels = _json["widthPixels"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aspectRatio != null) {
      _json["aspectRatio"] = aspectRatio;
    }
    if (bitrateBps != null) {
      _json["bitrateBps"] = bitrateBps;
    }
    if (codec != null) {
      _json["codec"] = codec;
    }
    if (frameRateFps != null) {
      _json["frameRateFps"] = frameRateFps;
    }
    if (heightPixels != null) {
      _json["heightPixels"] = heightPixels;
    }
    if (rotation != null) {
      _json["rotation"] = rotation;
    }
    if (vendor != null) {
      _json["vendor"] = vendor;
    }
    if (widthPixels != null) {
      _json["widthPixels"] = widthPixels;
    }
    return _json;
  }
}


/** Not documented yet. */
class VideoGetRatingResponse {
  /** Etag of this resource. */
  core.String etag;

  /** A list of ratings that match the request criteria. */
  core.List<VideoRating> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#videoGetRatingResponse".
   */
  core.String kind;


  VideoGetRatingResponse();

  VideoGetRatingResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new VideoRating.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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


/** Not documented yet. */
class VideoListResponse {
  /** Etag of this resource. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of videos that match the request criteria. */
  core.List<Video> items;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "youtube#videoListResponse".
   */
  core.String kind;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the next page in the result set.
   */
  core.String nextPageToken;

  /** Not documented yet. */
  PageInfo pageInfo;

  /**
   * The token that can be used as the value of the pageToken parameter to
   * retrieve the previous page in the result set.
   */
  core.String prevPageToken;

  /** Not documented yet. */
  TokenPagination tokenPagination;

  /** The visitorId identifies the visitor. */
  core.String visitorId;


  VideoListResponse();

  VideoListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Video.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
    if (_json.containsKey("visitorId")) {
      visitorId = _json["visitorId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
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
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    if (visitorId != null) {
      _json["visitorId"] = visitorId;
    }
    return _json;
  }
}


/** Details about the live streaming metadata. */
class VideoLiveStreamingDetails {
  /**
   * The time that the broadcast actually ended. The value is specified in ISO
   * 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be available
   * until the broadcast is over.
   */
  core.DateTime actualEndTime;

  /**
   * The time that the broadcast actually started. The value is specified in ISO
   * 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be available
   * until the broadcast begins.
   */
  core.DateTime actualStartTime;

  /**
   * The number of viewers currently watching the broadcast. The property and
   * its value will be present if the broadcast has current viewers and the
   * broadcast owner has not hidden the viewcount for the video. Note that
   * YouTube stops tracking the number of concurrent viewers for a broadcast
   * when the broadcast ends. So, this property would not identify the number of
   * viewers watching an archived video of a live broadcast that already ended.
   */
  core.String concurrentViewers;

  /**
   * The time that the broadcast is scheduled to end. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. If the value is empty or the
   * property is not present, then the broadcast is scheduled to continue
   * indefinitely.
   */
  core.DateTime scheduledEndTime;

  /**
   * The time that the broadcast is scheduled to begin. The value is specified
   * in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime scheduledStartTime;


  VideoLiveStreamingDetails();

  VideoLiveStreamingDetails.fromJson(core.Map _json) {
    if (_json.containsKey("actualEndTime")) {
      actualEndTime = core.DateTime.parse(_json["actualEndTime"]);
    }
    if (_json.containsKey("actualStartTime")) {
      actualStartTime = core.DateTime.parse(_json["actualStartTime"]);
    }
    if (_json.containsKey("concurrentViewers")) {
      concurrentViewers = _json["concurrentViewers"];
    }
    if (_json.containsKey("scheduledEndTime")) {
      scheduledEndTime = core.DateTime.parse(_json["scheduledEndTime"]);
    }
    if (_json.containsKey("scheduledStartTime")) {
      scheduledStartTime = core.DateTime.parse(_json["scheduledStartTime"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actualEndTime != null) {
      _json["actualEndTime"] = (actualEndTime).toIso8601String();
    }
    if (actualStartTime != null) {
      _json["actualStartTime"] = (actualStartTime).toIso8601String();
    }
    if (concurrentViewers != null) {
      _json["concurrentViewers"] = concurrentViewers;
    }
    if (scheduledEndTime != null) {
      _json["scheduledEndTime"] = (scheduledEndTime).toIso8601String();
    }
    if (scheduledStartTime != null) {
      _json["scheduledStartTime"] = (scheduledStartTime).toIso8601String();
    }
    return _json;
  }
}


/** Details about monetization of a YouTube Video. */
class VideoMonetizationDetails {
  /**
   * The value of access indicates whether the video can be monetized or not.
   */
  AccessPolicy access;


  VideoMonetizationDetails();

  VideoMonetizationDetails.fromJson(core.Map _json) {
    if (_json.containsKey("access")) {
      access = new AccessPolicy.fromJson(_json["access"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (access != null) {
      _json["access"] = (access).toJson();
    }
    return _json;
  }
}


/** Player to be used for a video playback. */
class VideoPlayer {
  /** An <iframe> tag that embeds a player that will play the video. */
  core.String embedHtml;


  VideoPlayer();

  VideoPlayer.fromJson(core.Map _json) {
    if (_json.containsKey("embedHtml")) {
      embedHtml = _json["embedHtml"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (embedHtml != null) {
      _json["embedHtml"] = embedHtml;
    }
    return _json;
  }
}


/**
 * Describes processing status and progress and availability of some other Video
 * resource parts.
 */
class VideoProcessingDetails {
  /**
   * This value indicates whether video editing suggestions, which might improve
   * video quality or the playback experience, are available for the video. You
   * can retrieve these suggestions by requesting the suggestions part in your
   * videos.list() request.
   */
  core.String editorSuggestionsAvailability;

  /**
   * This value indicates whether file details are available for the uploaded
   * video. You can retrieve a video's file details by requesting the
   * fileDetails part in your videos.list() request.
   */
  core.String fileDetailsAvailability;

  /**
   * The reason that YouTube failed to process the video. This property will
   * only have a value if the processingStatus property's value is failed.
   * Possible string values are:
   * - "other"
   * - "streamingFailed"
   * - "transcodeFailed"
   * - "uploadFailed"
   */
  core.String processingFailureReason;

  /**
   * This value indicates whether the video processing engine has generated
   * suggestions that might improve YouTube's ability to process the the video,
   * warnings that explain video processing problems, or errors that cause video
   * processing problems. You can retrieve these suggestions by requesting the
   * suggestions part in your videos.list() request.
   */
  core.String processingIssuesAvailability;

  /**
   * The processingProgress object contains information about the progress
   * YouTube has made in processing the video. The values are really only
   * relevant if the video's processing status is processing.
   */
  VideoProcessingDetailsProcessingProgress processingProgress;

  /**
   * The video's processing status. This value indicates whether YouTube was
   * able to process the video or if the video is still being processed.
   * Possible string values are:
   * - "failed"
   * - "processing"
   * - "succeeded"
   * - "terminated"
   */
  core.String processingStatus;

  /**
   * This value indicates whether keyword (tag) suggestions are available for
   * the video. Tags can be added to a video's metadata to make it easier for
   * other users to find the video. You can retrieve these suggestions by
   * requesting the suggestions part in your videos.list() request.
   */
  core.String tagSuggestionsAvailability;

  /**
   * This value indicates whether thumbnail images have been generated for the
   * video.
   */
  core.String thumbnailsAvailability;


  VideoProcessingDetails();

  VideoProcessingDetails.fromJson(core.Map _json) {
    if (_json.containsKey("editorSuggestionsAvailability")) {
      editorSuggestionsAvailability = _json["editorSuggestionsAvailability"];
    }
    if (_json.containsKey("fileDetailsAvailability")) {
      fileDetailsAvailability = _json["fileDetailsAvailability"];
    }
    if (_json.containsKey("processingFailureReason")) {
      processingFailureReason = _json["processingFailureReason"];
    }
    if (_json.containsKey("processingIssuesAvailability")) {
      processingIssuesAvailability = _json["processingIssuesAvailability"];
    }
    if (_json.containsKey("processingProgress")) {
      processingProgress = new VideoProcessingDetailsProcessingProgress.fromJson(_json["processingProgress"]);
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("tagSuggestionsAvailability")) {
      tagSuggestionsAvailability = _json["tagSuggestionsAvailability"];
    }
    if (_json.containsKey("thumbnailsAvailability")) {
      thumbnailsAvailability = _json["thumbnailsAvailability"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (editorSuggestionsAvailability != null) {
      _json["editorSuggestionsAvailability"] = editorSuggestionsAvailability;
    }
    if (fileDetailsAvailability != null) {
      _json["fileDetailsAvailability"] = fileDetailsAvailability;
    }
    if (processingFailureReason != null) {
      _json["processingFailureReason"] = processingFailureReason;
    }
    if (processingIssuesAvailability != null) {
      _json["processingIssuesAvailability"] = processingIssuesAvailability;
    }
    if (processingProgress != null) {
      _json["processingProgress"] = (processingProgress).toJson();
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (tagSuggestionsAvailability != null) {
      _json["tagSuggestionsAvailability"] = tagSuggestionsAvailability;
    }
    if (thumbnailsAvailability != null) {
      _json["thumbnailsAvailability"] = thumbnailsAvailability;
    }
    return _json;
  }
}


/** Video processing progress and completion time estimate. */
class VideoProcessingDetailsProcessingProgress {
  /**
   * The number of parts of the video that YouTube has already processed. You
   * can estimate the percentage of the video that YouTube has already processed
   * by calculating:
   * 100 * parts_processed / parts_total
   *
   * Note that since the estimated number of parts could increase without a
   * corresponding increase in the number of parts that have already been
   * processed, it is possible that the calculated progress could periodically
   * decrease while YouTube processes a video.
   */
  core.String partsProcessed;

  /**
   * An estimate of the total number of parts that need to be processed for the
   * video. The number may be updated with more precise estimates while YouTube
   * processes the video.
   */
  core.String partsTotal;

  /**
   * An estimate of the amount of time, in millseconds, that YouTube needs to
   * finish processing the video.
   */
  core.String timeLeftMs;


  VideoProcessingDetailsProcessingProgress();

  VideoProcessingDetailsProcessingProgress.fromJson(core.Map _json) {
    if (_json.containsKey("partsProcessed")) {
      partsProcessed = _json["partsProcessed"];
    }
    if (_json.containsKey("partsTotal")) {
      partsTotal = _json["partsTotal"];
    }
    if (_json.containsKey("timeLeftMs")) {
      timeLeftMs = _json["timeLeftMs"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (partsProcessed != null) {
      _json["partsProcessed"] = partsProcessed;
    }
    if (partsTotal != null) {
      _json["partsTotal"] = partsTotal;
    }
    if (timeLeftMs != null) {
      _json["timeLeftMs"] = timeLeftMs;
    }
    return _json;
  }
}


/** Project specific details about the content of a YouTube Video. */
class VideoProjectDetails {
  /** A list of project tags associated with the video during the upload. */
  core.List<core.String> tags;


  VideoProjectDetails();

  VideoProjectDetails.fromJson(core.Map _json) {
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}


/** Not documented yet. */
class VideoRating {
  /**
   * Not documented yet.
   * Possible string values are:
   * - "dislike"
   * - "like"
   * - "none"
   * - "unspecified"
   */
  core.String rating;

  /** Not documented yet. */
  core.String videoId;


  VideoRating();

  VideoRating.fromJson(core.Map _json) {
    if (_json.containsKey("rating")) {
      rating = _json["rating"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (rating != null) {
      _json["rating"] = rating;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}


/** Recording information associated with the video. */
class VideoRecordingDetails {
  /** The geolocation information associated with the video. */
  GeoPoint location;

  /** The text description of the location where the video was recorded. */
  core.String locationDescription;

  /**
   * The date and time when the video was recorded. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
   */
  core.DateTime recordingDate;


  VideoRecordingDetails();

  VideoRecordingDetails.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = new GeoPoint.fromJson(_json["location"]);
    }
    if (_json.containsKey("locationDescription")) {
      locationDescription = _json["locationDescription"];
    }
    if (_json.containsKey("recordingDate")) {
      recordingDate = core.DateTime.parse(_json["recordingDate"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (locationDescription != null) {
      _json["locationDescription"] = locationDescription;
    }
    if (recordingDate != null) {
      _json["recordingDate"] = (recordingDate).toIso8601String();
    }
    return _json;
  }
}


/**
 * Basic details about a video, including title, description, uploader,
 * thumbnails and category.
 */
class VideoSnippet {
  /** The YouTube video category associated with the video. */
  core.String categoryId;

  /**
   * The ID that YouTube uses to uniquely identify the channel that the video
   * was uploaded to.
   */
  core.String channelId;

  /** Channel title for the channel that the video belongs to. */
  core.String channelTitle;

  /** The video's description. */
  core.String description;

  /**
   * Indicates if the video is an upcoming/active live broadcast. Or it's "none"
   * if the video is not an upcoming/active live broadcast.
   * Possible string values are:
   * - "live"
   * - "none"
   * - "upcoming"
   */
  core.String liveBroadcastContent;

  /**
   * The date and time that the video was uploaded. The value is specified in
   * ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishedAt;

  /**
   * A list of keyword tags associated with the video. Tags may contain spaces.
   * This field is only visible to the video's uploader.
   */
  core.List<core.String> tags;

  /**
   * A map of thumbnail images associated with the video. For each object in the
   * map, the key is the name of the thumbnail image, and the value is an object
   * that contains other information about the thumbnail.
   */
  ThumbnailDetails thumbnails;

  /** The video's title. */
  core.String title;


  VideoSnippet();

  VideoSnippet.fromJson(core.Map _json) {
    if (_json.containsKey("categoryId")) {
      categoryId = _json["categoryId"];
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("channelTitle")) {
      channelTitle = _json["channelTitle"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("liveBroadcastContent")) {
      liveBroadcastContent = _json["liveBroadcastContent"];
    }
    if (_json.containsKey("publishedAt")) {
      publishedAt = core.DateTime.parse(_json["publishedAt"]);
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(_json["thumbnails"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (categoryId != null) {
      _json["categoryId"] = categoryId;
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (channelTitle != null) {
      _json["channelTitle"] = channelTitle;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (liveBroadcastContent != null) {
      _json["liveBroadcastContent"] = liveBroadcastContent;
    }
    if (publishedAt != null) {
      _json["publishedAt"] = (publishedAt).toIso8601String();
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (thumbnails != null) {
      _json["thumbnails"] = (thumbnails).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/**
 * Statistics about the video, such as the number of times the video was viewed
 * or liked.
 */
class VideoStatistics {
  /** The number of comments for the video. */
  core.String commentCount;

  /**
   * The number of users who have indicated that they disliked the video by
   * giving it a negative rating.
   */
  core.String dislikeCount;

  /**
   * The number of users who currently have the video marked as a favorite
   * video.
   */
  core.String favoriteCount;

  /**
   * The number of users who have indicated that they liked the video by giving
   * it a positive rating.
   */
  core.String likeCount;

  /** The number of times the video has been viewed. */
  core.String viewCount;


  VideoStatistics();

  VideoStatistics.fromJson(core.Map _json) {
    if (_json.containsKey("commentCount")) {
      commentCount = _json["commentCount"];
    }
    if (_json.containsKey("dislikeCount")) {
      dislikeCount = _json["dislikeCount"];
    }
    if (_json.containsKey("favoriteCount")) {
      favoriteCount = _json["favoriteCount"];
    }
    if (_json.containsKey("likeCount")) {
      likeCount = _json["likeCount"];
    }
    if (_json.containsKey("viewCount")) {
      viewCount = _json["viewCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commentCount != null) {
      _json["commentCount"] = commentCount;
    }
    if (dislikeCount != null) {
      _json["dislikeCount"] = dislikeCount;
    }
    if (favoriteCount != null) {
      _json["favoriteCount"] = favoriteCount;
    }
    if (likeCount != null) {
      _json["likeCount"] = likeCount;
    }
    if (viewCount != null) {
      _json["viewCount"] = viewCount;
    }
    return _json;
  }
}


/** Basic details about a video category, such as its localized title. */
class VideoStatus {
  /** This value indicates if the video can be embedded on another website. */
  core.bool embeddable;

  /**
   * This value explains why a video failed to upload. This property is only
   * present if the uploadStatus property indicates that the upload failed.
   * Possible string values are:
   * - "codec"
   * - "conversion"
   * - "emptyFile"
   * - "invalidFile"
   * - "tooSmall"
   * - "uploadAborted"
   */
  core.String failureReason;

  /**
   * The video's license.
   * Possible string values are:
   * - "creativeCommon"
   * - "youtube"
   */
  core.String license;

  /**
   * The video's privacy status.
   * Possible string values are:
   * - "private"
   * - "public"
   * - "unlisted"
   */
  core.String privacyStatus;

  /**
   * This value indicates if the extended video statistics on the watch page can
   * be viewed by everyone. Note that the view count, likes, etc will still be
   * visible if this is disabled.
   */
  core.bool publicStatsViewable;

  /**
   * The date and time when the video is scheduled to publish. It can be set
   * only if the privacy status of the video is private. The value is specified
   * in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   */
  core.DateTime publishAt;

  /**
   * This value explains why YouTube rejected an uploaded video. This property
   * is only present if the uploadStatus property indicates that the upload was
   * rejected.
   * Possible string values are:
   * - "claim"
   * - "copyright"
   * - "duplicate"
   * - "inappropriate"
   * - "length"
   * - "termsOfUse"
   * - "trademark"
   * - "uploaderAccountClosed"
   * - "uploaderAccountSuspended"
   */
  core.String rejectionReason;

  /**
   * The status of the uploaded video.
   * Possible string values are:
   * - "deleted"
   * - "failed"
   * - "processed"
   * - "rejected"
   * - "uploaded"
   */
  core.String uploadStatus;


  VideoStatus();

  VideoStatus.fromJson(core.Map _json) {
    if (_json.containsKey("embeddable")) {
      embeddable = _json["embeddable"];
    }
    if (_json.containsKey("failureReason")) {
      failureReason = _json["failureReason"];
    }
    if (_json.containsKey("license")) {
      license = _json["license"];
    }
    if (_json.containsKey("privacyStatus")) {
      privacyStatus = _json["privacyStatus"];
    }
    if (_json.containsKey("publicStatsViewable")) {
      publicStatsViewable = _json["publicStatsViewable"];
    }
    if (_json.containsKey("publishAt")) {
      publishAt = core.DateTime.parse(_json["publishAt"]);
    }
    if (_json.containsKey("rejectionReason")) {
      rejectionReason = _json["rejectionReason"];
    }
    if (_json.containsKey("uploadStatus")) {
      uploadStatus = _json["uploadStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (embeddable != null) {
      _json["embeddable"] = embeddable;
    }
    if (failureReason != null) {
      _json["failureReason"] = failureReason;
    }
    if (license != null) {
      _json["license"] = license;
    }
    if (privacyStatus != null) {
      _json["privacyStatus"] = privacyStatus;
    }
    if (publicStatsViewable != null) {
      _json["publicStatsViewable"] = publicStatsViewable;
    }
    if (publishAt != null) {
      _json["publishAt"] = (publishAt).toIso8601String();
    }
    if (rejectionReason != null) {
      _json["rejectionReason"] = rejectionReason;
    }
    if (uploadStatus != null) {
      _json["uploadStatus"] = uploadStatus;
    }
    return _json;
  }
}


/**
 * Specifies suggestions on how to improve video content, including encoding
 * hints, tag suggestions, and editor suggestions.
 */
class VideoSuggestions {
  /**
   * A list of video editing operations that might improve the video quality or
   * playback experience of the uploaded video.
   */
  core.List<core.String> editorSuggestions;

  /**
   * A list of errors that will prevent YouTube from successfully processing the
   * uploaded video video. These errors indicate that, regardless of the video's
   * current processing status, eventually, that status will almost certainly be
   * failed.
   */
  core.List<core.String> processingErrors;

  /**
   * A list of suggestions that may improve YouTube's ability to process the
   * video.
   */
  core.List<core.String> processingHints;

  /**
   * A list of reasons why YouTube may have difficulty transcoding the uploaded
   * video or that might result in an erroneous transcoding. These warnings are
   * generated before YouTube actually processes the uploaded video file. In
   * addition, they identify issues that are unlikely to cause the video
   * processing to fail but that might cause problems such as sync issues, video
   * artifacts, or a missing audio track.
   */
  core.List<core.String> processingWarnings;

  /**
   * A list of keyword tags that could be added to the video's metadata to
   * increase the likelihood that users will locate your video when searching or
   * browsing on YouTube.
   */
  core.List<VideoSuggestionsTagSuggestion> tagSuggestions;


  VideoSuggestions();

  VideoSuggestions.fromJson(core.Map _json) {
    if (_json.containsKey("editorSuggestions")) {
      editorSuggestions = _json["editorSuggestions"];
    }
    if (_json.containsKey("processingErrors")) {
      processingErrors = _json["processingErrors"];
    }
    if (_json.containsKey("processingHints")) {
      processingHints = _json["processingHints"];
    }
    if (_json.containsKey("processingWarnings")) {
      processingWarnings = _json["processingWarnings"];
    }
    if (_json.containsKey("tagSuggestions")) {
      tagSuggestions = _json["tagSuggestions"].map((value) => new VideoSuggestionsTagSuggestion.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (editorSuggestions != null) {
      _json["editorSuggestions"] = editorSuggestions;
    }
    if (processingErrors != null) {
      _json["processingErrors"] = processingErrors;
    }
    if (processingHints != null) {
      _json["processingHints"] = processingHints;
    }
    if (processingWarnings != null) {
      _json["processingWarnings"] = processingWarnings;
    }
    if (tagSuggestions != null) {
      _json["tagSuggestions"] = tagSuggestions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** A single tag suggestion with it's relevance information. */
class VideoSuggestionsTagSuggestion {
  /**
   * A set of video categories for which the tag is relevant. You can use this
   * information to display appropriate tag suggestions based on the video
   * category that the video uploader associates with the video. By default, tag
   * suggestions are relevant for all categories if there are no restricts
   * defined for the keyword.
   */
  core.List<core.String> categoryRestricts;

  /** The keyword tag suggested for the video. */
  core.String tag;


  VideoSuggestionsTagSuggestion();

  VideoSuggestionsTagSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey("categoryRestricts")) {
      categoryRestricts = _json["categoryRestricts"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (categoryRestricts != null) {
      _json["categoryRestricts"] = categoryRestricts;
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    return _json;
  }
}


/** Freebase topic information related to the video. */
class VideoTopicDetails {
  /**
   * Similar to topic_id, except that these topics are merely relevant to the
   * video. These are topics that may be mentioned in, or appear in the video.
   * You can retrieve information about each topic using Freebase Topic API.
   */
  core.List<core.String> relevantTopicIds;

  /**
   * A list of Freebase topic IDs that are centrally associated with the video.
   * These are topics that are centrally featured in the video, and it can be
   * said that the video is mainly about each of these. You can retrieve
   * information about each topic using the Freebase Topic API.
   */
  core.List<core.String> topicIds;


  VideoTopicDetails();

  VideoTopicDetails.fromJson(core.Map _json) {
    if (_json.containsKey("relevantTopicIds")) {
      relevantTopicIds = _json["relevantTopicIds"];
    }
    if (_json.containsKey("topicIds")) {
      topicIds = _json["topicIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (relevantTopicIds != null) {
      _json["relevantTopicIds"] = relevantTopicIds;
    }
    if (topicIds != null) {
      _json["topicIds"] = topicIds;
    }
    return _json;
  }
}


/** Branding properties for the watch. */
class WatchSettings {
  /** The text color for the video watch page's branded area. */
  core.String backgroundColor;

  /**
   * An ID that uniquely identifies a playlist that displays next to the video
   * player.
   */
  core.String featuredPlaylistId;

  /** The background color for the video watch page's branded area. */
  core.String textColor;


  WatchSettings();

  WatchSettings.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundColor")) {
      backgroundColor = _json["backgroundColor"];
    }
    if (_json.containsKey("featuredPlaylistId")) {
      featuredPlaylistId = _json["featuredPlaylistId"];
    }
    if (_json.containsKey("textColor")) {
      textColor = _json["textColor"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backgroundColor != null) {
      _json["backgroundColor"] = backgroundColor;
    }
    if (featuredPlaylistId != null) {
      _json["featuredPlaylistId"] = featuredPlaylistId;
    }
    if (textColor != null) {
      _json["textColor"] = textColor;
    }
    return _json;
  }
}


