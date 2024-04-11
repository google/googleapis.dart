// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Data Portability API - v1
///
/// The Data Portability API lets you build applications that request
/// authorization from a user to move a copy of data from Google services into
/// your application. This enables data portability and facilitates switching
/// services.
///
/// For more information, see <https://developers.google.com/data-portability>
///
/// Create an instance of [DataPortabilityApi] to access these resources:
///
/// - [ArchiveJobsResource]
/// - [AuthorizationResource]
/// - [PortabilityArchiveResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Data Portability API lets you build applications that request
/// authorization from a user to move a copy of data from Google services into
/// your application.
///
/// This enables data portability and facilitates switching services.
class DataPortabilityApi {
  /// Move a copy of messages between you and the businesses you have
  /// conversations with across Google services.
  static const dataportabilityBusinessmessagingConversationsScope =
      'https://www.googleapis.com/auth/dataportability.businessmessaging.conversations';

  /// Move a copy of the information you entered into online forms in Chrome.
  static const dataportabilityChromeAutofillScope =
      'https://www.googleapis.com/auth/dataportability.chrome.autofill';

  /// Move a copy of pages you bookmarked in Chrome.
  static const dataportabilityChromeBookmarksScope =
      'https://www.googleapis.com/auth/dataportability.chrome.bookmarks';

  /// Move a copy of words you added to Chrome's dictionary.
  static const dataportabilityChromeDictionaryScope =
      'https://www.googleapis.com/auth/dataportability.chrome.dictionary';

  /// Move a copy of extensions you installed from the Chrome Web Store.
  static const dataportabilityChromeExtensionsScope =
      'https://www.googleapis.com/auth/dataportability.chrome.extensions';

  /// Move a copy of sites you visited in Chrome.
  static const dataportabilityChromeHistoryScope =
      'https://www.googleapis.com/auth/dataportability.chrome.history';

  /// Move a copy of pages you added to your reading list in Chrome.
  static const dataportabilityChromeReadingListScope =
      'https://www.googleapis.com/auth/dataportability.chrome.reading_list';

  /// Move a copy of your settings in Chrome.
  static const dataportabilityChromeSettingsScope =
      'https://www.googleapis.com/auth/dataportability.chrome.settings';

  /// Move a copy of searches and sites you follow, saved by Discover.
  static const dataportabilityDiscoverFollowsScope =
      'https://www.googleapis.com/auth/dataportability.discover.follows';

  /// Move a copy of links to your liked documents, saved by Discover.
  static const dataportabilityDiscoverLikesScope =
      'https://www.googleapis.com/auth/dataportability.discover.likes';

  /// Move a copy of content you marked as not interested, saved by Discover.
  static const dataportabilityDiscoverNotInterestedScope =
      'https://www.googleapis.com/auth/dataportability.discover.not_interested';

  /// Move a copy of the places you labeled on Maps.
  static const dataportabilityMapsAliasedPlacesScope =
      'https://www.googleapis.com/auth/dataportability.maps.aliased_places';

  /// Move a copy of your pinned trips on Maps.
  static const dataportabilityMapsCommuteRoutesScope =
      'https://www.googleapis.com/auth/dataportability.maps.commute_routes';

  /// Move a copy of your commute settings on Maps.
  static const dataportabilityMapsCommuteSettingsScope =
      'https://www.googleapis.com/auth/dataportability.maps.commute_settings';

  /// Move a copy of your electric vehicle profile on Maps.
  static const dataportabilityMapsEvProfileScope =
      'https://www.googleapis.com/auth/dataportability.maps.ev_profile';

  /// Move a copy of the corrections you made to places or map information on
  /// Maps.
  static const dataportabilityMapsFactualContributionsScope =
      'https://www.googleapis.com/auth/dataportability.maps.factual_contributions';

  /// Move a copy of your updates to places on Maps.
  static const dataportabilityMapsOfferingContributionsScope =
      'https://www.googleapis.com/auth/dataportability.maps.offering_contributions';

  /// Move a copy of the photos and videos you posted on Maps.
  static const dataportabilityMapsPhotosVideosScope =
      'https://www.googleapis.com/auth/dataportability.maps.photos_videos';

  /// Move a copy of the questions and answers you posted on Maps.
  static const dataportabilityMapsQuestionsAnswersScope =
      'https://www.googleapis.com/auth/dataportability.maps.questions_answers';

  /// Move a copy of your reviews and posts on Maps.
  static const dataportabilityMapsReviewsScope =
      'https://www.googleapis.com/auth/dataportability.maps.reviews';

  /// Move a copy of your Starred places list on Maps.
  static const dataportabilityMapsStarredPlacesScope =
      'https://www.googleapis.com/auth/dataportability.maps.starred_places';

  /// Move a copy of your Maps activity.
  static const dataportabilityMyactivityMapsScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.maps';

  /// Move a copy of your My Ad Center activity.
  static const dataportabilityMyactivityMyadcenterScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.myadcenter';

  /// Move a copy of your Google Play activity.
  static const dataportabilityMyactivityPlayScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.play';

  /// Move a copy of your Google Search activity.
  static const dataportabilityMyactivitySearchScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.search';

  /// Move a copy of your Shopping activity.
  static const dataportabilityMyactivityShoppingScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.shopping';

  /// Move a copy of your YouTube activity.
  static const dataportabilityMyactivityYoutubeScope =
      'https://www.googleapis.com/auth/dataportability.myactivity.youtube';

  /// Move a copy of the maps you created in My Maps.
  static const dataportabilityMymapsMapsScope =
      'https://www.googleapis.com/auth/dataportability.mymaps.maps';

  /// Move a copy of your food purchase and reservation activity.
  static const dataportabilityOrderReservePurchasesReservationsScope =
      'https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations';

  /// Move a copy of information about your devices with Google Play Store
  /// installed.
  static const dataportabilityPlayDevicesScope =
      'https://www.googleapis.com/auth/dataportability.play.devices';

  /// Move a copy of your Google Play Store Grouping tags created by app
  /// developers.
  static const dataportabilityPlayGroupingScope =
      'https://www.googleapis.com/auth/dataportability.play.grouping';

  /// Move a copy of your Google Play Store app installations.
  static const dataportabilityPlayInstallsScope =
      'https://www.googleapis.com/auth/dataportability.play.installs';

  /// Move a copy of your Google Play Store downloads, including books, games,
  /// and apps.
  static const dataportabilityPlayLibraryScope =
      'https://www.googleapis.com/auth/dataportability.play.library';

  /// Move a copy of information about your Google Play Store Points.
  static const dataportabilityPlayPlaypointsScope =
      'https://www.googleapis.com/auth/dataportability.play.playpoints';

  /// Move a copy of information about your Google Play Store promotions.
  static const dataportabilityPlayPromotionsScope =
      'https://www.googleapis.com/auth/dataportability.play.promotions';

  /// Move a copy of your Google Play Store purchases.
  static const dataportabilityPlayPurchasesScope =
      'https://www.googleapis.com/auth/dataportability.play.purchases';

  /// Move a copy of your Google Play Store redemption activities.
  static const dataportabilityPlayRedemptionsScope =
      'https://www.googleapis.com/auth/dataportability.play.redemptions';

  /// Move a copy of your Google Play Store subscriptions.
  static const dataportabilityPlaySubscriptionsScope =
      'https://www.googleapis.com/auth/dataportability.play.subscriptions';

  /// Move a copy of your Google Play Store user settings and preferences.
  static const dataportabilityPlayUsersettingsScope =
      'https://www.googleapis.com/auth/dataportability.play.usersettings';

  /// Move a copy of your saved links, images, places, and collections from your
  /// use of Google services.
  static const dataportabilitySavedCollectionsScope =
      'https://www.googleapis.com/auth/dataportability.saved.collections';

  /// Move a copy of your media reviews on Google Search.
  static const dataportabilitySearchUgcMediaReviewsAndStarsScope =
      'https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars';

  /// Move a copy of your self-reported video streaming provider preferences
  /// from Google Search and Google TV.
  static const dataportabilitySearchUgcMediaStreamingVideoProvidersScope =
      'https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers';

  /// Move a copy of your indicated thumbs up and thumbs down on media in Google
  /// Search and Google TV.
  static const dataportabilitySearchUgcMediaThumbsScope =
      'https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs';

  /// Move a copy of information about the movies and TV shows you marked as
  /// watched on Google Search and Google TV.
  static const dataportabilitySearchUgcMediaWatchedScope =
      'https://www.googleapis.com/auth/dataportability.search_ugc.media.watched';

  /// Move a copy of your notification settings on the Google Search app.
  static const dataportabilitySearchnotificationsSettingsScope =
      'https://www.googleapis.com/auth/dataportability.searchnotifications.settings';

  /// Move a copy of your notification subscriptions on Google Search app.
  static const dataportabilitySearchnotificationsSubscriptionsScope =
      'https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions';

  /// Move a copy of your shipping information on Shopping.
  static const dataportabilityShoppingAddressesScope =
      'https://www.googleapis.com/auth/dataportability.shopping.addresses';

  /// Move a copy of reviews you wrote about products or online stores on Google
  /// Search.
  static const dataportabilityShoppingReviewsScope =
      'https://www.googleapis.com/auth/dataportability.shopping.reviews';

  /// Move a copy of the images and videos you uploaded to Street View.
  static const dataportabilityStreetviewImageryScope =
      'https://www.googleapis.com/auth/dataportability.streetview.imagery';

  /// Move a copy of information about your YouTube channel.
  static const dataportabilityYoutubeChannelScope =
      'https://www.googleapis.com/auth/dataportability.youtube.channel';

  /// Move a copy of your YouTube comments.
  static const dataportabilityYoutubeCommentsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.comments';

  /// Move a copy of your YouTube messages in live chat.
  static const dataportabilityYoutubeLiveChatScope =
      'https://www.googleapis.com/auth/dataportability.youtube.live_chat';

  /// Move a copy of your uploaded YouTube music tracks and your YouTube music
  /// library.
  static const dataportabilityYoutubeMusicScope =
      'https://www.googleapis.com/auth/dataportability.youtube.music';

  /// Move a copy of your YouTube playables saved game progress files.
  static const dataportabilityYoutubePlayableScope =
      'https://www.googleapis.com/auth/dataportability.youtube.playable';

  /// Move a copy of your YouTube posts.
  static const dataportabilityYoutubePostsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.posts';

  /// Move a copy of your YouTube private playlists.
  static const dataportabilityYoutubePrivatePlaylistsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.private_playlists';

  /// Move a copy of your private YouTube videos and information about them.
  static const dataportabilityYoutubePrivateVideosScope =
      'https://www.googleapis.com/auth/dataportability.youtube.private_videos';

  /// Move a copy of your public YouTube playlists.
  static const dataportabilityYoutubePublicPlaylistsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.public_playlists';

  /// Move a copy of your public YouTube videos and information about them.
  static const dataportabilityYoutubePublicVideosScope =
      'https://www.googleapis.com/auth/dataportability.youtube.public_videos';

  /// Move a copy of your YouTube shopping wishlists, and wishlist items.
  static const dataportabilityYoutubeShoppingScope =
      'https://www.googleapis.com/auth/dataportability.youtube.shopping';

  /// Move a copy of your YouTube channel subscriptions, even if they're
  /// private.
  static const dataportabilityYoutubeSubscriptionsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.subscriptions';

  /// Move a copy of your unlisted YouTube playlists.
  static const dataportabilityYoutubeUnlistedPlaylistsScope =
      'https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists';

  /// Move a copy of your unlisted YouTube videos and information about them.
  static const dataportabilityYoutubeUnlistedVideosScope =
      'https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos';

  final commons.ApiRequester _requester;

  ArchiveJobsResource get archiveJobs => ArchiveJobsResource(_requester);
  AuthorizationResource get authorization => AuthorizationResource(_requester);
  PortabilityArchiveResource get portabilityArchive =>
      PortabilityArchiveResource(_requester);

  DataPortabilityApi(http.Client client,
      {core.String rootUrl = 'https://dataportability.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ArchiveJobsResource {
  final commons.ApiRequester _requester;

  ArchiveJobsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the state of an Archive job for the Portability API.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The archive job ID that is returned when you request
  /// the state of the job. The format is:
  /// archiveJobs/{archive_job}/portabilityArchiveState. archive_job is the job
  /// ID returned by the InitiatePortabilityArchiveResponse.
  /// Value must have pattern `^archiveJobs/\[^/\]+/portabilityArchiveState$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PortabilityArchiveState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PortabilityArchiveState> getPortabilityArchiveState(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PortabilityArchiveState.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retries a failed Portability Archive job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Archive job ID you're retrying. This is returned by
  /// the InitiatePortabilityArchiveResponse. Retrying is only executed if the
  /// initial job failed.
  /// Value must have pattern `^archiveJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetryPortabilityArchiveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetryPortabilityArchiveResponse> retry(
    RetryPortabilityArchiveRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':retry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetryPortabilityArchiveResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AuthorizationResource {
  final commons.ApiRequester _requester;

  AuthorizationResource(commons.ApiRequester client) : _requester = client;

  /// Revokes OAuth tokens and resets exhausted scopes for a user/project pair.
  ///
  /// This method allows you to initiate a request after a new consent is
  /// granted. This method also indicates that previous archives can be garbage
  /// collected. You should call this method when all jobs are complete and all
  /// archives are downloaded. Do not call it only when you start a new job.
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
  async.Future<Empty> reset(
    ResetAuthorizationRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/authorization:reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PortabilityArchiveResource {
  final commons.ApiRequester _requester;

  PortabilityArchiveResource(commons.ApiRequester client) : _requester = client;

  /// Initiates a new Archive job for the Portability API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InitiatePortabilityArchiveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InitiatePortabilityArchiveResponse> initiate(
    InitiatePortabilityArchiveRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/portabilityArchive:initiate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InitiatePortabilityArchiveResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request to kick off an Archive job.
class InitiatePortabilityArchiveRequest {
  /// The resources from which you're exporting data.
  ///
  /// These values have a 1:1 correspondence with the OAuth scopes.
  core.List<core.String>? resources;

  InitiatePortabilityArchiveRequest({
    this.resources,
  });

  InitiatePortabilityArchiveRequest.fromJson(core.Map json_)
      : this(
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resources != null) 'resources': resources!,
      };
}

/// Response from initiating an Archive job.
class InitiatePortabilityArchiveResponse {
  /// The archive job ID that is initiated in the API.
  ///
  /// This can be used to get the state of the job.
  core.String? archiveJobId;

  InitiatePortabilityArchiveResponse({
    this.archiveJobId,
  });

  InitiatePortabilityArchiveResponse.fromJson(core.Map json_)
      : this(
          archiveJobId: json_.containsKey('archiveJobId')
              ? json_['archiveJobId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveJobId != null) 'archiveJobId': archiveJobId!,
      };
}

/// Resource that contains the state of an Archive job.
class PortabilityArchiveState {
  /// The resource name of ArchiveJob's PortabilityArchiveState singleton.
  ///
  /// The format is: archiveJobs/{archive_job}/portabilityArchiveState.
  /// archive_job is the job ID provided in the request.
  core.String? name;

  /// Resource that represents the state of the Archive job.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "IN_PROGRESS" : The job is in progress.
  /// - "COMPLETE" : The job is complete.
  /// - "FAILED" : The job failed.
  /// - "CANCELLED" : The job is cancelled.
  core.String? state;

  /// If the state is complete, this method returns the signed URLs of the
  /// objects in the Cloud Storage bucket.
  core.List<core.String>? urls;

  PortabilityArchiveState({
    this.name,
    this.state,
    this.urls,
  });

  PortabilityArchiveState.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          urls: json_.containsKey('urls')
              ? (json_['urls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (urls != null) 'urls': urls!,
      };
}

/// Request to reset exhausted OAuth scopes.
typedef ResetAuthorizationRequest = $Empty;

/// Request to retry a failed Portability Archive job.
typedef RetryPortabilityArchiveRequest = $Empty;

/// Response from retrying a Portability Archive.
class RetryPortabilityArchiveResponse {
  /// The archive job ID that is initiated by the retry endpoint.
  ///
  /// This can be used to get the state of the new job.
  core.String? archiveJobId;

  RetryPortabilityArchiveResponse({
    this.archiveJobId,
  });

  RetryPortabilityArchiveResponse.fromJson(core.Map json_)
      : this(
          archiveJobId: json_.containsKey('archiveJobId')
              ? json_['archiveJobId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveJobId != null) 'archiveJobId': archiveJobId!,
      };
}
