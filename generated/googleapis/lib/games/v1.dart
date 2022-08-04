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

/// Google Play Game Services - v1
///
/// The Google Play games service allows developers to enhance games with social
/// leaderboards, achievements, game state, sign-in with Google, and more.
///
/// For more information, see <https://developers.google.com/games/>
///
/// Create an instance of [GamesApi] to access these resources:
///
/// - [AchievementDefinitionsResource]
/// - [AchievementsResource]
/// - [ApplicationsResource]
/// - [EventsResource]
/// - [LeaderboardsResource]
/// - [MetagameResource]
/// - [PlayersResource]
/// - [RevisionsResource]
/// - [ScoresResource]
/// - [SnapshotsResource]
/// - [StatsResource]
library games.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Play games service allows developers to enhance games with social
/// leaderboards, achievements, game state, sign-in with Google, and more.
class GamesApi {
  /// See, create, and delete its own configuration data in your Google Drive
  static const driveAppdataScope =
      'https://www.googleapis.com/auth/drive.appdata';

  /// Create, edit, and delete your Google Play Games activity
  static const gamesScope = 'https://www.googleapis.com/auth/games';

  final commons.ApiRequester _requester;

  AchievementDefinitionsResource get achievementDefinitions =>
      AchievementDefinitionsResource(_requester);
  AchievementsResource get achievements => AchievementsResource(_requester);
  ApplicationsResource get applications => ApplicationsResource(_requester);
  EventsResource get events => EventsResource(_requester);
  LeaderboardsResource get leaderboards => LeaderboardsResource(_requester);
  MetagameResource get metagame => MetagameResource(_requester);
  PlayersResource get players => PlayersResource(_requester);
  RevisionsResource get revisions => RevisionsResource(_requester);
  ScoresResource get scores => ScoresResource(_requester);
  SnapshotsResource get snapshots => SnapshotsResource(_requester);
  StatsResource get stats => StatsResource(_requester);

  GamesApi(http.Client client,
      {core.String rootUrl = 'https://games.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AchievementDefinitionsResource {
  final commons.ApiRequester _requester;

  AchievementDefinitionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all the achievement definitions for your application.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of achievement resources to return in
  /// the response, used for paging. For any response, the actual number of
  /// achievement resources returned may be less than the specified
  /// `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementDefinitionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementDefinitionsListResponse> list({
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/achievements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AchievementDefinitionsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AchievementsResource {
  final commons.ApiRequester _requester;

  AchievementsResource(commons.ApiRequester client) : _requester = client;

  /// Increments the steps of the achievement with the given ID for the
  /// currently authenticated player.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [stepsToIncrement] - The number of steps to increment.
  ///
  /// [requestId] - A randomly generated numeric ID for each request specified
  /// by the caller. This number is used at the server to ensure that the
  /// request is handled correctly across retries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementIncrementResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementIncrementResponse> increment(
    core.String achievementId,
    core.int stepsToIncrement, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'stepsToIncrement': ['${stepsToIncrement}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/increment';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementIncrementResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the progress for all your application's achievements for the
  /// currently authenticated player.
  ///
  /// Request parameters:
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of achievement resources to return in
  /// the response, used for paging. For any response, the actual number of
  /// achievement resources returned may be less than the specified
  /// `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [state] - Tells the server to return only achievements with the specified
  /// state. If this parameter isn't specified, all achievements are returned.
  /// Possible string values are:
  /// - "ALL" : List all achievements. This is the default.
  /// - "HIDDEN" : List only hidden achievements.
  /// - "REVEALED" : List only revealed achievements.
  /// - "UNLOCKED" : List only unlocked achievements.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerAchievementListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerAchievementListResponse> list(
    core.String playerId, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? state,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (state != null) 'state': [state],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/players/' +
        commons.escapeVariable('$playerId') +
        '/achievements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlayerAchievementListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the state of the achievement with the given ID to `REVEALED` for the
  /// currently authenticated player.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementRevealResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementRevealResponse> reveal(
    core.String achievementId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/reveal';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementRevealResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the steps for the currently authenticated player towards unlocking an
  /// achievement.
  ///
  /// If the steps parameter is less than the current number of steps that the
  /// player already gained for the achievement, the achievement is not
  /// modified.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [steps] - The minimum value to set the steps to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementSetStepsAtLeastResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementSetStepsAtLeastResponse> setStepsAtLeast(
    core.String achievementId,
    core.int steps, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'steps': ['${steps}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/setStepsAtLeast';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementSetStepsAtLeastResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unlocks this achievement for the currently authenticated player.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementUnlockResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementUnlockResponse> unlock(
    core.String achievementId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/unlock';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementUnlockResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates multiple achievements for the currently authenticated player.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementUpdateMultipleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementUpdateMultipleResponse> updateMultiple(
    AchievementUpdateMultipleRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/achievements/updateMultiple';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AchievementUpdateMultipleResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ApplicationsResource {
  final commons.ApiRequester _requester;

  ApplicationsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the metadata of the application with the given ID.
  ///
  /// If the requested application is not available for the specified
  /// `platformType`, the returned response will not include any instance data.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [platformType] - Restrict application details returned to the specific
  /// platform.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Default value, don't use.
  /// - "ANDROID" : Retrieve applications that can be played on Android.
  /// - "IOS" : Retrieve applications that can be played on iOS.
  /// - "WEB_APP" : Retrieve applications that can be played on desktop web.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Application].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Application> get(
    core.String applicationId, {
    core.String? language,
    core.String? platformType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (platformType != null) 'platformType': [platformType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'games/v1/applications/' + commons.escapeVariable('$applicationId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Application.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a URL for the requested end point type.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [endPointType] - Type of endpoint being requested.
  /// Possible string values are:
  /// - "END_POINT_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PROFILE_CREATION" : Request a URL to create a new profile.
  /// - "PROFILE_SETTINGS" : Request a URL for the Settings view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EndPoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EndPoint> getEndPoint({
    core.String? applicationId,
    core.String? endPointType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (applicationId != null) 'applicationId': [applicationId],
      if (endPointType != null) 'endPointType': [endPointType],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/applications/getEndPoint';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return EndPoint.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Indicate that the currently authenticated user is playing your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> played({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/applications/played';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Verifies the auth token provided with this request is for the application
  /// with the specified ID, and returns the ID of the player it was granted
  /// for.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApplicationVerifyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApplicationVerifyResponse> verify(
    core.String applicationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/applications/' +
        commons.escapeVariable('$applicationId') +
        '/verify';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ApplicationVerifyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// Returns a list showing the current progress on events in this application
  /// for the currently authenticated user.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of events to return in the response,
  /// used for paging. For any response, the actual number of events to return
  /// may be less than the specified maxResults.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerEventListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerEventListResponse> listByPlayer({
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/events';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlayerEventListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of the event definitions in this application.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of event definitions to return in the
  /// response, used for paging. For any response, the actual number of event
  /// definitions to return may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventDefinitionListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventDefinitionListResponse> listDefinitions({
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/eventDefinitions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventDefinitionListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Records a batch of changes to the number of times events have occurred for
  /// the currently authenticated user of this application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventUpdateResponse> record(
    EventRecordRequest request, {
    core.String? language,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/events';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventUpdateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LeaderboardsResource {
  final commons.ApiRequester _requester;

  LeaderboardsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the metadata of the leaderboard with the given ID.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Leaderboard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Leaderboard> get(
    core.String leaderboardId, {
    core.String? language,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'games/v1/leaderboards/' + commons.escapeVariable('$leaderboardId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Leaderboard.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the leaderboard metadata for your application.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of leaderboards to return in the
  /// response. For any response, the actual number of leaderboards returned may
  /// be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaderboardListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaderboardListResponse> list({
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/leaderboards';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LeaderboardListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MetagameResource {
  final commons.ApiRequester _requester;

  MetagameResource(commons.ApiRequester client) : _requester = client;

  /// Return the metagame configuration data for the calling application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetagameConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetagameConfig> getMetagameConfig({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/metagameConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MetagameConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List play data aggregated per category for the player corresponding to
  /// `playerId`.
  ///
  /// Request parameters:
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [collection] - The collection of categories for which data will be
  /// returned.
  /// Possible string values are:
  /// - "COLLECTION_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL" : Retrieve data for all categories. This is the default.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of category resources to return in the
  /// response, used for paging. For any response, the actual number of category
  /// resources returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CategoryListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CategoryListResponse> listCategoriesByPlayer(
    core.String playerId,
    core.String collection, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/players/' +
        commons.escapeVariable('$playerId') +
        '/categories/' +
        commons.escapeVariable('$collection');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CategoryListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlayersResource {
  final commons.ApiRequester _requester;

  PlayersResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the Player resource with the given ID.
  ///
  /// To retrieve the player for the currently authenticated user, set
  /// `playerId` to `me`.
  ///
  /// Request parameters:
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [playerIdConsistencyToken] - Consistency token of the player id. The call
  /// returns a 'not found' result when the token is present and invalid. Empty
  /// value is ignored. See also GlobalPlayerIdConsistencyTokenProto
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Player].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Player> get(
    core.String playerId, {
    core.String? language,
    core.String? playerIdConsistencyToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (playerIdConsistencyToken != null)
        'playerIdConsistencyToken': [playerIdConsistencyToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/players/' + commons.escapeVariable('$playerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Player.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves scoped player identifiers for currently authenticated user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScopedPlayerIds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScopedPlayerIds> getScopedPlayerIds({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/players/me/scopedIds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ScopedPlayerIds.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the collection of players for the currently authenticated user.
  ///
  /// Request parameters:
  ///
  /// [collection] - Collection of players being retrieved
  /// Possible string values are:
  /// - "CONNECTED" : Retrieve a list of players that are also playing this game
  /// in reverse chronological order.
  /// - "VISIBLE" : Retrieve a list of players in the user's social graph that
  /// are visible to this game.
  /// - "FRIENDS_ALL" : Retrieve a list of players who are friends of the user
  /// in alphabetical order.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of player resources to return in the
  /// response, used for paging. For any response, the actual number of player
  /// resources returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerListResponse> list(
    core.String collection, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'games/v1/players/me/players/' + commons.escapeVariable('$collection');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlayerListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RevisionsResource {
  final commons.ApiRequester _requester;

  RevisionsResource(commons.ApiRequester client) : _requester = client;

  /// Checks whether the games client is out of date.
  ///
  /// Request parameters:
  ///
  /// [clientRevision] - The revision of the client SDK used by your
  /// application. Format: `[PLATFORM_TYPE]:[VERSION_NUMBER]`. Possible values
  /// of `PLATFORM_TYPE` are: * `ANDROID` - Client is running the Android SDK. *
  /// `IOS` - Client is running the iOS SDK. * `WEB_APP` - Client is running as
  /// a Web App.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevisionCheckResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevisionCheckResponse> check(
    core.String clientRevision, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'clientRevision': [clientRevision],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/revisions/check';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RevisionCheckResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ScoresResource {
  final commons.ApiRequester _requester;

  ScoresResource(commons.ApiRequester client) : _requester = client;

  /// Get high scores, and optionally ranks, in leaderboards for the currently
  /// authenticated player.
  ///
  /// For a specific time span, \`leaderboardId\` can be set to \`ALL\` to
  /// retrieve data for all leaderboards in a given time span. \`NOTE: You
  /// cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request;
  /// only one parameter may be set to 'ALL'.
  ///
  /// Request parameters:
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [leaderboardId] - The ID of the leaderboard. Can be set to 'ALL' to
  /// retrieve data for all leaderboards for this application.
  ///
  /// [timeSpan] - The time span for the scores and ranks you're requesting.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL" : Get the high scores for all time spans. If this is used,
  /// maxResults values will be ignored.
  /// - "ALL_TIME" : Get the all time high score.
  /// - "WEEKLY" : List the top scores for the current day.
  /// - "DAILY" : List the top scores for the current week.
  ///
  /// [includeRankType] - The types of ranks to return. If the parameter is
  /// omitted, no ranks will be returned.
  /// Possible string values are:
  /// - "INCLUDE_RANK_TYPE_UNSPECIFIED" : Default value. Should be unused.
  /// - "ALL" : Retrieve all supported ranks. In HTTP, this parameter value can
  /// also be specified as `ALL`.
  /// - "PUBLIC" : Retrieve public ranks, if the player is sharing their
  /// gameplay activity publicly.
  /// - "SOCIAL" : (Obsolete) Retrieve the social rank.
  /// - "FRIENDS" : Retrieve the rank on the friends collection.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of leaderboard scores to return in the
  /// response. For any response, the actual number of leaderboard scores
  /// returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerLeaderboardScoreListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerLeaderboardScoreListResponse> get(
    core.String playerId,
    core.String leaderboardId,
    core.String timeSpan, {
    core.String? includeRankType,
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeRankType != null) 'includeRankType': [includeRankType],
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/players/' +
        commons.escapeVariable('$playerId') +
        '/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/scores/' +
        commons.escapeVariable('$timeSpan');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlayerLeaderboardScoreListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the scores in a leaderboard, starting from the top.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [collection] - The collection of scores you're requesting.
  /// Possible string values are:
  /// - "SCORE_COLLECTION_UNSPECIFIED" : Default value. This value is unused.
  /// - "PUBLIC" : List all scores in the public leaderboard.
  /// - "SOCIAL" : (Obsolete) Legacy G+ social scores.
  /// - "FRIENDS" : List only scores of friends.
  ///
  /// [timeSpan] - The time span for the scores and ranks you're requesting.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL_TIME" : The score is an all-time score.
  /// - "WEEKLY" : The score is a weekly score.
  /// - "DAILY" : The score is a daily score.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of leaderboard scores to return in the
  /// response. For any response, the actual number of leaderboard scores
  /// returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaderboardScores].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaderboardScores> list(
    core.String leaderboardId,
    core.String collection,
    core.String timeSpan, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'timeSpan': [timeSpan],
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/scores/' +
        commons.escapeVariable('$collection');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LeaderboardScores.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the scores in a leaderboard around (and including) a player's score.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [collection] - The collection of scores you're requesting.
  /// Possible string values are:
  /// - "SCORE_COLLECTION_UNSPECIFIED" : Default value. This value is unused.
  /// - "PUBLIC" : List all scores in the public leaderboard.
  /// - "SOCIAL" : (Obsolete) Legacy G+ social scores.
  /// - "FRIENDS" : List only scores of friends.
  ///
  /// [timeSpan] - The time span for the scores and ranks you're requesting.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL_TIME" : The score is an all-time score.
  /// - "WEEKLY" : The score is a weekly score.
  /// - "DAILY" : The score is a daily score.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of leaderboard scores to return in the
  /// response. For any response, the actual number of leaderboard scores
  /// returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [resultsAbove] - The preferred number of scores to return above the
  /// player's score. More scores may be returned if the player is at the bottom
  /// of the leaderboard; fewer may be returned if the player is at the top.
  /// Must be less than or equal to maxResults.
  ///
  /// [returnTopIfAbsent] - True if the top scores should be returned when the
  /// player is not in the leaderboard. Defaults to true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaderboardScores].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaderboardScores> listWindow(
    core.String leaderboardId,
    core.String collection,
    core.String timeSpan, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.int? resultsAbove,
    core.bool? returnTopIfAbsent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'timeSpan': [timeSpan],
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (resultsAbove != null) 'resultsAbove': ['${resultsAbove}'],
      if (returnTopIfAbsent != null)
        'returnTopIfAbsent': ['${returnTopIfAbsent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/window/' +
        commons.escapeVariable('$collection');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LeaderboardScores.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Submits a score to the specified leaderboard.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [score] - The score you're submitting. The submitted score is ignored if
  /// it is worse than a previously submitted score, where worse depends on the
  /// leaderboard sort order. The meaning of the score value depends on the
  /// leaderboard format type. For fixed-point, the score represents the raw
  /// value. For time, the score represents elapsed time in milliseconds. For
  /// currency, the score represents a value in micro units.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [scoreTag] - Additional information about the score you're submitting.
  /// Values must contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  /// Value must have pattern `\[a-zA-Z0-9-._~\]{0,64}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreResponse> submit(
    core.String leaderboardId,
    core.String score, {
    core.String? language,
    core.String? scoreTag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'score': [score],
      if (language != null) 'language': [language],
      if (scoreTag != null) 'scoreTag': [scoreTag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/scores';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return PlayerScoreResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Submits multiple scores to leaderboards.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreListResponse> submitMultiple(
    PlayerScoreSubmissionList request, {
    core.String? language,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/leaderboards/scores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PlayerScoreListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SnapshotsResource {
  final commons.ApiRequester _requester;

  SnapshotsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the metadata for a given snapshot ID.
  ///
  /// Request parameters:
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String snapshotId, {
    core.String? language,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/snapshots/' + commons.escapeVariable('$snapshotId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of snapshots created by your application for the player
  /// corresponding to the player ID.
  ///
  /// Request parameters:
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [language] - The preferred language to use for strings returned by this
  /// method.
  ///
  /// [maxResults] - The maximum number of snapshot resources to return in the
  /// response, used for paging. For any response, the actual number of snapshot
  /// resources returned may be less than the specified `maxResults`.
  ///
  /// [pageToken] - The token returned by the previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SnapshotListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SnapshotListResponse> list(
    core.String playerId, {
    core.String? language,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (language != null) 'language': [language],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1/players/' +
        commons.escapeVariable('$playerId') +
        '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SnapshotListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class StatsResource {
  final commons.ApiRequester _requester;

  StatsResource(commons.ApiRequester client) : _requester = client;

  /// Returns engagement and spend statistics in this application for the
  /// currently authenticated user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StatsResponse> get({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1/stats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An achievement definition object.
class AchievementDefinition {
  /// The type of the achievement.
  /// Possible string values are:
  /// - "ACHIEVEMENT_TYPE_UNSPECIFIED" : Safe default, don't use.
  /// - "STANDARD" : Achievement is either locked or unlocked.
  /// - "INCREMENTAL" : Achievement is incremental.
  core.String? achievementType;

  /// The description of the achievement.
  core.String? description;

  /// Experience points which will be earned when unlocking this achievement.
  core.String? experiencePoints;

  /// The total steps for an incremental achievement as a string.
  core.String? formattedTotalSteps;

  /// The ID of the achievement.
  core.String? id;

  /// The initial state of the achievement.
  /// Possible string values are:
  /// - "INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED" : Safe default, don't use.
  /// - "HIDDEN" : Achievement is hidden.
  /// - "REVEALED" : Achievement is revealed.
  /// - "UNLOCKED" : Achievement is unlocked.
  core.String? initialState;

  /// Indicates whether the revealed icon image being returned is a default
  /// image, or is provided by the game.
  core.bool? isRevealedIconUrlDefault;

  /// Indicates whether the unlocked icon image being returned is a default
  /// image, or is game-provided.
  core.bool? isUnlockedIconUrlDefault;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementDefinition`.
  core.String? kind;

  /// The name of the achievement.
  core.String? name;

  /// The image URL for the revealed achievement icon.
  core.String? revealedIconUrl;

  /// The total steps for an incremental achievement.
  core.int? totalSteps;

  /// The image URL for the unlocked achievement icon.
  core.String? unlockedIconUrl;

  AchievementDefinition({
    this.achievementType,
    this.description,
    this.experiencePoints,
    this.formattedTotalSteps,
    this.id,
    this.initialState,
    this.isRevealedIconUrlDefault,
    this.isUnlockedIconUrlDefault,
    this.kind,
    this.name,
    this.revealedIconUrl,
    this.totalSteps,
    this.unlockedIconUrl,
  });

  AchievementDefinition.fromJson(core.Map json_)
      : this(
          achievementType: json_.containsKey('achievementType')
              ? json_['achievementType'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          experiencePoints: json_.containsKey('experiencePoints')
              ? json_['experiencePoints'] as core.String
              : null,
          formattedTotalSteps: json_.containsKey('formattedTotalSteps')
              ? json_['formattedTotalSteps'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          initialState: json_.containsKey('initialState')
              ? json_['initialState'] as core.String
              : null,
          isRevealedIconUrlDefault:
              json_.containsKey('isRevealedIconUrlDefault')
                  ? json_['isRevealedIconUrlDefault'] as core.bool
                  : null,
          isUnlockedIconUrlDefault:
              json_.containsKey('isUnlockedIconUrlDefault')
                  ? json_['isUnlockedIconUrlDefault'] as core.bool
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          revealedIconUrl: json_.containsKey('revealedIconUrl')
              ? json_['revealedIconUrl'] as core.String
              : null,
          totalSteps: json_.containsKey('totalSteps')
              ? json_['totalSteps'] as core.int
              : null,
          unlockedIconUrl: json_.containsKey('unlockedIconUrl')
              ? json_['unlockedIconUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementType != null) 'achievementType': achievementType!,
        if (description != null) 'description': description!,
        if (experiencePoints != null) 'experiencePoints': experiencePoints!,
        if (formattedTotalSteps != null)
          'formattedTotalSteps': formattedTotalSteps!,
        if (id != null) 'id': id!,
        if (initialState != null) 'initialState': initialState!,
        if (isRevealedIconUrlDefault != null)
          'isRevealedIconUrlDefault': isRevealedIconUrlDefault!,
        if (isUnlockedIconUrlDefault != null)
          'isUnlockedIconUrlDefault': isUnlockedIconUrlDefault!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (revealedIconUrl != null) 'revealedIconUrl': revealedIconUrl!,
        if (totalSteps != null) 'totalSteps': totalSteps!,
        if (unlockedIconUrl != null) 'unlockedIconUrl': unlockedIconUrl!,
      };
}

/// A list of achievement definition objects.
class AchievementDefinitionsListResponse {
  /// The achievement definitions.
  core.List<AchievementDefinition>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `games#achievementDefinitionsListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  core.String? nextPageToken;

  AchievementDefinitionsListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  AchievementDefinitionsListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => AchievementDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An achievement increment response
class AchievementIncrementResponse {
  /// The current steps recorded for this incremental achievement.
  core.int? currentSteps;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementIncrementResponse`.
  core.String? kind;

  /// Whether the current steps for the achievement has reached the number of
  /// steps required to unlock.
  core.bool? newlyUnlocked;

  AchievementIncrementResponse({
    this.currentSteps,
    this.kind,
    this.newlyUnlocked,
  });

  AchievementIncrementResponse.fromJson(core.Map json_)
      : this(
          currentSteps: json_.containsKey('currentSteps')
              ? json_['currentSteps'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          newlyUnlocked: json_.containsKey('newlyUnlocked')
              ? json_['newlyUnlocked'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentSteps != null) 'currentSteps': currentSteps!,
        if (kind != null) 'kind': kind!,
        if (newlyUnlocked != null) 'newlyUnlocked': newlyUnlocked!,
      };
}

/// An achievement reveal response
class AchievementRevealResponse {
  /// The current state of the achievement for which a reveal was attempted.
  ///
  /// This might be `UNLOCKED` if the achievement was already unlocked.
  /// Possible string values are:
  /// - "REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED" : Safe default, don't use.
  /// - "REVEALED" : Achievement is revealed.
  /// - "UNLOCKED" : Achievement is unlocked.
  core.String? currentState;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementRevealResponse`.
  core.String? kind;

  AchievementRevealResponse({
    this.currentState,
    this.kind,
  });

  AchievementRevealResponse.fromJson(core.Map json_)
      : this(
          currentState: json_.containsKey('currentState')
              ? json_['currentState'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentState != null) 'currentState': currentState!,
        if (kind != null) 'kind': kind!,
      };
}

/// An achievement set steps at least response.
class AchievementSetStepsAtLeastResponse {
  /// The current steps recorded for this incremental achievement.
  core.int? currentSteps;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `games#achievementSetStepsAtLeastResponse`.
  core.String? kind;

  /// Whether the current steps for the achievement has reached the number of
  /// steps required to unlock.
  core.bool? newlyUnlocked;

  AchievementSetStepsAtLeastResponse({
    this.currentSteps,
    this.kind,
    this.newlyUnlocked,
  });

  AchievementSetStepsAtLeastResponse.fromJson(core.Map json_)
      : this(
          currentSteps: json_.containsKey('currentSteps')
              ? json_['currentSteps'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          newlyUnlocked: json_.containsKey('newlyUnlocked')
              ? json_['newlyUnlocked'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentSteps != null) 'currentSteps': currentSteps!,
        if (kind != null) 'kind': kind!,
        if (newlyUnlocked != null) 'newlyUnlocked': newlyUnlocked!,
      };
}

/// An achievement unlock response
class AchievementUnlockResponse {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementUnlockResponse`.
  core.String? kind;

  /// Whether this achievement was newly unlocked (that is, whether the unlock
  /// request for the achievement was the first for the player).
  core.bool? newlyUnlocked;

  AchievementUnlockResponse({
    this.kind,
    this.newlyUnlocked,
  });

  AchievementUnlockResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          newlyUnlocked: json_.containsKey('newlyUnlocked')
              ? json_['newlyUnlocked'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (newlyUnlocked != null) 'newlyUnlocked': newlyUnlocked!,
      };
}

/// A list of achievement update requests.
class AchievementUpdateMultipleRequest {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementUpdateMultipleRequest`.
  core.String? kind;

  /// The individual achievement update requests.
  core.List<AchievementUpdateRequest>? updates;

  AchievementUpdateMultipleRequest({
    this.kind,
    this.updates,
  });

  AchievementUpdateMultipleRequest.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updates: json_.containsKey('updates')
              ? (json_['updates'] as core.List)
                  .map((value) => AchievementUpdateRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (updates != null) 'updates': updates!,
      };
}

/// Response message for UpdateMultipleAchievements rpc.
class AchievementUpdateMultipleResponse {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `games#achievementUpdateMultipleResponse`.
  core.String? kind;

  /// The updated state of the achievements.
  core.List<AchievementUpdateResponse>? updatedAchievements;

  AchievementUpdateMultipleResponse({
    this.kind,
    this.updatedAchievements,
  });

  AchievementUpdateMultipleResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updatedAchievements: json_.containsKey('updatedAchievements')
              ? (json_['updatedAchievements'] as core.List)
                  .map((value) => AchievementUpdateResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (updatedAchievements != null)
          'updatedAchievements': updatedAchievements!,
      };
}

/// A request to update an achievement.
class AchievementUpdateRequest {
  /// The achievement this update is being applied to.
  core.String? achievementId;

  /// The payload if an update of type `INCREMENT` was requested for the
  /// achievement.
  GamesAchievementIncrement? incrementPayload;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementUpdateRequest`.
  core.String? kind;

  /// The payload if an update of type `SET_STEPS_AT_LEAST` was requested for
  /// the achievement.
  GamesAchievementSetStepsAtLeast? setStepsAtLeastPayload;

  /// The type of update being applied.
  /// Possible string values are:
  /// - "ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED" : Safe default, don't use.
  /// - "REVEAL" : Achievement is revealed.
  /// - "UNLOCK" : Achievement is unlocked.
  /// - "INCREMENT" : Achievement is incremented.
  /// - "SET_STEPS_AT_LEAST" : Achievement progress is set to at least the
  /// passed value.
  core.String? updateType;

  AchievementUpdateRequest({
    this.achievementId,
    this.incrementPayload,
    this.kind,
    this.setStepsAtLeastPayload,
    this.updateType,
  });

  AchievementUpdateRequest.fromJson(core.Map json_)
      : this(
          achievementId: json_.containsKey('achievementId')
              ? json_['achievementId'] as core.String
              : null,
          incrementPayload: json_.containsKey('incrementPayload')
              ? GamesAchievementIncrement.fromJson(json_['incrementPayload']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          setStepsAtLeastPayload: json_.containsKey('setStepsAtLeastPayload')
              ? GamesAchievementSetStepsAtLeast.fromJson(
                  json_['setStepsAtLeastPayload']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateType: json_.containsKey('updateType')
              ? json_['updateType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementId != null) 'achievementId': achievementId!,
        if (incrementPayload != null) 'incrementPayload': incrementPayload!,
        if (kind != null) 'kind': kind!,
        if (setStepsAtLeastPayload != null)
          'setStepsAtLeastPayload': setStepsAtLeastPayload!,
        if (updateType != null) 'updateType': updateType!,
      };
}

/// An updated achievement.
class AchievementUpdateResponse {
  /// The achievement this update is was applied to.
  core.String? achievementId;

  /// The current state of the achievement.
  /// Possible string values are:
  /// - "UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED" : Safe default, don't use.
  /// - "HIDDEN" : Achievement is hidden.
  /// - "REVEALED" : Achievement is revealed.
  /// - "UNLOCKED" : Achievement is unlocked.
  core.String? currentState;

  /// The current steps recorded for this achievement if it is incremental.
  core.int? currentSteps;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#achievementUpdateResponse`.
  core.String? kind;

  /// Whether this achievement was newly unlocked (that is, whether the unlock
  /// request for the achievement was the first for the player).
  core.bool? newlyUnlocked;

  /// Whether the requested updates actually affected the achievement.
  core.bool? updateOccurred;

  AchievementUpdateResponse({
    this.achievementId,
    this.currentState,
    this.currentSteps,
    this.kind,
    this.newlyUnlocked,
    this.updateOccurred,
  });

  AchievementUpdateResponse.fromJson(core.Map json_)
      : this(
          achievementId: json_.containsKey('achievementId')
              ? json_['achievementId'] as core.String
              : null,
          currentState: json_.containsKey('currentState')
              ? json_['currentState'] as core.String
              : null,
          currentSteps: json_.containsKey('currentSteps')
              ? json_['currentSteps'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          newlyUnlocked: json_.containsKey('newlyUnlocked')
              ? json_['newlyUnlocked'] as core.bool
              : null,
          updateOccurred: json_.containsKey('updateOccurred')
              ? json_['updateOccurred'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementId != null) 'achievementId': achievementId!,
        if (currentState != null) 'currentState': currentState!,
        if (currentSteps != null) 'currentSteps': currentSteps!,
        if (kind != null) 'kind': kind!,
        if (newlyUnlocked != null) 'newlyUnlocked': newlyUnlocked!,
        if (updateOccurred != null) 'updateOccurred': updateOccurred!,
      };
}

/// The Application resource.
class Application {
  /// The number of achievements visible to the currently authenticated player.
  core.int? achievementCount;

  /// The assets of the application.
  core.List<ImageAsset>? assets;

  /// The author of the application.
  core.String? author;

  /// The category of the application.
  ApplicationCategory? category;

  /// The description of the application.
  core.String? description;

  /// A list of features that have been enabled for the application.
  core.List<core.String>? enabledFeatures;

  /// The ID of the application.
  core.String? id;

  /// The instances of the application.
  core.List<Instance>? instances;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#application`.
  core.String? kind;

  /// The last updated timestamp of the application.
  core.String? lastUpdatedTimestamp;

  /// The number of leaderboards visible to the currently authenticated player.
  core.int? leaderboardCount;

  /// The name of the application.
  core.String? name;

  /// A hint to the client UI for what color to use as an app-themed color.
  ///
  /// The color is given as an RGB triplet (e.g. "E0E0E0").
  core.String? themeColor;

  Application({
    this.achievementCount,
    this.assets,
    this.author,
    this.category,
    this.description,
    this.enabledFeatures,
    this.id,
    this.instances,
    this.kind,
    this.lastUpdatedTimestamp,
    this.leaderboardCount,
    this.name,
    this.themeColor,
  });

  Application.fromJson(core.Map json_)
      : this(
          achievementCount: json_.containsKey('achievement_count')
              ? json_['achievement_count'] as core.int
              : null,
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => ImageAsset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          author: json_.containsKey('author')
              ? json_['author'] as core.String
              : null,
          category: json_.containsKey('category')
              ? ApplicationCategory.fromJson(
                  json_['category'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enabledFeatures: json_.containsKey('enabledFeatures')
              ? (json_['enabledFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastUpdatedTimestamp: json_.containsKey('lastUpdatedTimestamp')
              ? json_['lastUpdatedTimestamp'] as core.String
              : null,
          leaderboardCount: json_.containsKey('leaderboard_count')
              ? json_['leaderboard_count'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          themeColor: json_.containsKey('themeColor')
              ? json_['themeColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementCount != null) 'achievement_count': achievementCount!,
        if (assets != null) 'assets': assets!,
        if (author != null) 'author': author!,
        if (category != null) 'category': category!,
        if (description != null) 'description': description!,
        if (enabledFeatures != null) 'enabledFeatures': enabledFeatures!,
        if (id != null) 'id': id!,
        if (instances != null) 'instances': instances!,
        if (kind != null) 'kind': kind!,
        if (lastUpdatedTimestamp != null)
          'lastUpdatedTimestamp': lastUpdatedTimestamp!,
        if (leaderboardCount != null) 'leaderboard_count': leaderboardCount!,
        if (name != null) 'name': name!,
        if (themeColor != null) 'themeColor': themeColor!,
      };
}

/// An application category object.
class ApplicationCategory {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#applicationCategory`.
  core.String? kind;

  /// The primary category.
  core.String? primary;

  /// The secondary category.
  core.String? secondary;

  ApplicationCategory({
    this.kind,
    this.primary,
    this.secondary,
  });

  ApplicationCategory.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          primary: json_.containsKey('primary')
              ? json_['primary'] as core.String
              : null,
          secondary: json_.containsKey('secondary')
              ? json_['secondary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (primary != null) 'primary': primary!,
        if (secondary != null) 'secondary': secondary!,
      };
}

/// A third party application verification response resource.
class ApplicationVerifyResponse {
  /// An alternate ID that was once used for the player that was issued the auth
  /// token used in this request.
  ///
  /// (This field is not normally populated.)
  core.String? alternatePlayerId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#applicationVerifyResponse`.
  core.String? kind;

  /// The ID of the player that was issued the auth token used in this request.
  core.String? playerId;

  ApplicationVerifyResponse({
    this.alternatePlayerId,
    this.kind,
    this.playerId,
  });

  ApplicationVerifyResponse.fromJson(core.Map json_)
      : this(
          alternatePlayerId: json_.containsKey('alternate_player_id')
              ? json_['alternate_player_id'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          playerId: json_.containsKey('player_id')
              ? json_['player_id'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternatePlayerId != null)
          'alternate_player_id': alternatePlayerId!,
        if (kind != null) 'kind': kind!,
        if (playerId != null) 'player_id': playerId!,
      };
}

/// Data related to individual game categories.
class Category {
  /// The category name.
  core.String? category;

  /// Experience points earned in this category.
  core.String? experiencePoints;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#category`.
  core.String? kind;

  Category({
    this.category,
    this.experiencePoints,
    this.kind,
  });

  Category.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          experiencePoints: json_.containsKey('experiencePoints')
              ? json_['experiencePoints'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (experiencePoints != null) 'experiencePoints': experiencePoints!,
        if (kind != null) 'kind': kind!,
      };
}

/// A third party list metagame categories response.
class CategoryListResponse {
  /// The list of categories with usage data.
  core.List<Category>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#categoryListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  core.String? nextPageToken;

  CategoryListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  CategoryListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Container for a URL end point of the requested type.
class EndPoint {
  /// A URL suitable for loading in a web browser for the requested endpoint.
  core.String? url;

  EndPoint({
    this.url,
  });

  EndPoint.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// A batch update failure resource.
class EventBatchRecordFailure {
  /// The cause for the update failure.
  /// Possible string values are:
  /// - "EVENT_FAILURE_CAUSE_UNSPECIFIED" : Default value. Should not be used.
  /// - "TOO_LARGE" : A batch request was issued with more events than are
  /// allowed in a single batch.
  /// - "TIME_PERIOD_EXPIRED" : A batch was sent with data too far in the past
  /// to record.
  /// - "TIME_PERIOD_SHORT" : A batch was sent with a time range that was too
  /// short.
  /// - "TIME_PERIOD_LONG" : A batch was sent with a time range that was too
  /// long.
  /// - "ALREADY_UPDATED" : An attempt was made to record a batch of data which
  /// was already seen.
  /// - "RECORD_RATE_HIGH" : An attempt was made to record data faster than the
  /// server will apply updates.
  core.String? failureCause;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventBatchRecordFailure`.
  core.String? kind;

  /// The time range which was rejected; empty for a request-wide failure.
  EventPeriodRange? range;

  EventBatchRecordFailure({
    this.failureCause,
    this.kind,
    this.range,
  });

  EventBatchRecordFailure.fromJson(core.Map json_)
      : this(
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          range: json_.containsKey('range')
              ? EventPeriodRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureCause != null) 'failureCause': failureCause!,
        if (kind != null) 'kind': kind!,
        if (range != null) 'range': range!,
      };
}

/// An event child relationship resource.
class EventChild {
  /// The ID of the child event.
  core.String? childId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventChild`.
  core.String? kind;

  EventChild({
    this.childId,
    this.kind,
  });

  EventChild.fromJson(core.Map json_)
      : this(
          childId: json_.containsKey('childId')
              ? json_['childId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childId != null) 'childId': childId!,
        if (kind != null) 'kind': kind!,
      };
}

/// An event definition resource.
class EventDefinition {
  /// A list of events that are a child of this event.
  core.List<EventChild>? childEvents;

  /// Description of what this event represents.
  core.String? description;

  /// The name to display for the event.
  core.String? displayName;

  /// The ID of the event.
  core.String? id;

  /// The base URL for the image that represents the event.
  core.String? imageUrl;

  /// Indicates whether the icon image being returned is a default image, or is
  /// game-provided.
  core.bool? isDefaultImageUrl;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventDefinition`.
  core.String? kind;

  /// The visibility of event being tracked in this definition.
  /// Possible string values are:
  /// - "EVENT_VISIBILITY_UNSPECIFIED" : Default value. Should not be used.
  /// - "REVEALED" : This event should be visible to all users.
  /// - "HIDDEN" : This event should only be shown to users that have recorded
  /// this event at least once.
  core.String? visibility;

  EventDefinition({
    this.childEvents,
    this.description,
    this.displayName,
    this.id,
    this.imageUrl,
    this.isDefaultImageUrl,
    this.kind,
    this.visibility,
  });

  EventDefinition.fromJson(core.Map json_)
      : this(
          childEvents: json_.containsKey('childEvents')
              ? (json_['childEvents'] as core.List)
                  .map((value) => EventChild.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          isDefaultImageUrl: json_.containsKey('isDefaultImageUrl')
              ? json_['isDefaultImageUrl'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childEvents != null) 'childEvents': childEvents!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (isDefaultImageUrl != null) 'isDefaultImageUrl': isDefaultImageUrl!,
        if (kind != null) 'kind': kind!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// A ListDefinitions response.
class EventDefinitionListResponse {
  /// The event definitions.
  core.List<EventDefinition>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventDefinitionListResponse`.
  core.String? kind;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  EventDefinitionListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  EventDefinitionListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => EventDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An event period time range.
class EventPeriodRange {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventPeriodRange`.
  core.String? kind;

  /// The time when this update period ends, in millis, since 1970 UTC (Unix
  /// Epoch).
  core.String? periodEndMillis;

  /// The time when this update period begins, in millis, since 1970 UTC (Unix
  /// Epoch).
  core.String? periodStartMillis;

  EventPeriodRange({
    this.kind,
    this.periodEndMillis,
    this.periodStartMillis,
  });

  EventPeriodRange.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          periodEndMillis: json_.containsKey('periodEndMillis')
              ? json_['periodEndMillis'] as core.String
              : null,
          periodStartMillis: json_.containsKey('periodStartMillis')
              ? json_['periodStartMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (periodEndMillis != null) 'periodEndMillis': periodEndMillis!,
        if (periodStartMillis != null) 'periodStartMillis': periodStartMillis!,
      };
}

/// An event period update resource.
class EventPeriodUpdate {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventPeriodUpdate`.
  core.String? kind;

  /// The time period being covered by this update.
  EventPeriodRange? timePeriod;

  /// The updates being made for this time period.
  core.List<EventUpdateRequest>? updates;

  EventPeriodUpdate({
    this.kind,
    this.timePeriod,
    this.updates,
  });

  EventPeriodUpdate.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          timePeriod: json_.containsKey('timePeriod')
              ? EventPeriodRange.fromJson(
                  json_['timePeriod'] as core.Map<core.String, core.dynamic>)
              : null,
          updates: json_.containsKey('updates')
              ? (json_['updates'] as core.List)
                  .map((value) => EventUpdateRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (timePeriod != null) 'timePeriod': timePeriod!,
        if (updates != null) 'updates': updates!,
      };
}

/// An event update failure resource.
class EventRecordFailure {
  /// The ID of the event that was not updated.
  core.String? eventId;

  /// The cause for the update failure.
  /// Possible string values are:
  /// - "EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED" : Default value. Should not
  /// use.
  /// - "NOT_FOUND" : An attempt was made to set an event that was not defined.
  /// - "INVALID_UPDATE_VALUE" : An attempt was made to increment an event by a
  /// non-positive value.
  core.String? failureCause;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventRecordFailure`.
  core.String? kind;

  EventRecordFailure({
    this.eventId,
    this.failureCause,
    this.kind,
  });

  EventRecordFailure.fromJson(core.Map json_)
      : this(
          eventId: json_.containsKey('eventId')
              ? json_['eventId'] as core.String
              : null,
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventId != null) 'eventId': eventId!,
        if (failureCause != null) 'failureCause': failureCause!,
        if (kind != null) 'kind': kind!,
      };
}

/// An event period update resource.
class EventRecordRequest {
  /// The current time when this update was sent, in milliseconds, since 1970
  /// UTC (Unix Epoch).
  core.String? currentTimeMillis;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventRecordRequest`.
  core.String? kind;

  /// The request ID used to identify this attempt to record events.
  core.String? requestId;

  /// A list of the time period updates being made in this request.
  core.List<EventPeriodUpdate>? timePeriods;

  EventRecordRequest({
    this.currentTimeMillis,
    this.kind,
    this.requestId,
    this.timePeriods,
  });

  EventRecordRequest.fromJson(core.Map json_)
      : this(
          currentTimeMillis: json_.containsKey('currentTimeMillis')
              ? json_['currentTimeMillis'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          timePeriods: json_.containsKey('timePeriods')
              ? (json_['timePeriods'] as core.List)
                  .map((value) => EventPeriodUpdate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentTimeMillis != null) 'currentTimeMillis': currentTimeMillis!,
        if (kind != null) 'kind': kind!,
        if (requestId != null) 'requestId': requestId!,
        if (timePeriods != null) 'timePeriods': timePeriods!,
      };
}

/// An event period update resource.
class EventUpdateRequest {
  /// The ID of the event being modified in this update.
  core.String? definitionId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventUpdateRequest`.
  core.String? kind;

  /// The number of times this event occurred in this time period.
  core.String? updateCount;

  EventUpdateRequest({
    this.definitionId,
    this.kind,
    this.updateCount,
  });

  EventUpdateRequest.fromJson(core.Map json_)
      : this(
          definitionId: json_.containsKey('definitionId')
              ? json_['definitionId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updateCount: json_.containsKey('updateCount')
              ? json_['updateCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (definitionId != null) 'definitionId': definitionId!,
        if (kind != null) 'kind': kind!,
        if (updateCount != null) 'updateCount': updateCount!,
      };
}

/// An event period update resource.
class EventUpdateResponse {
  /// Any batch-wide failures which occurred applying updates.
  core.List<EventBatchRecordFailure>? batchFailures;

  /// Any failures updating a particular event.
  core.List<EventRecordFailure>? eventFailures;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#eventUpdateResponse`.
  core.String? kind;

  /// The current status of any updated events
  core.List<PlayerEvent>? playerEvents;

  EventUpdateResponse({
    this.batchFailures,
    this.eventFailures,
    this.kind,
    this.playerEvents,
  });

  EventUpdateResponse.fromJson(core.Map json_)
      : this(
          batchFailures: json_.containsKey('batchFailures')
              ? (json_['batchFailures'] as core.List)
                  .map((value) => EventBatchRecordFailure.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          eventFailures: json_.containsKey('eventFailures')
              ? (json_['eventFailures'] as core.List)
                  .map((value) => EventRecordFailure.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          playerEvents: json_.containsKey('playerEvents')
              ? (json_['playerEvents'] as core.List)
                  .map((value) => PlayerEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchFailures != null) 'batchFailures': batchFailures!,
        if (eventFailures != null) 'eventFailures': eventFailures!,
        if (kind != null) 'kind': kind!,
        if (playerEvents != null) 'playerEvents': playerEvents!,
      };
}

/// The payload to request to increment an achievement.
class GamesAchievementIncrement {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#GamesAchievementIncrement`.
  core.String? kind;

  /// The requestId associated with an increment to an achievement.
  core.String? requestId;

  /// The number of steps to be incremented.
  core.int? steps;

  GamesAchievementIncrement({
    this.kind,
    this.requestId,
    this.steps,
  });

  GamesAchievementIncrement.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          steps: json_.containsKey('steps') ? json_['steps'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (requestId != null) 'requestId': requestId!,
        if (steps != null) 'steps': steps!,
      };
}

/// The payload to request to increment an achievement.
class GamesAchievementSetStepsAtLeast {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#GamesAchievementSetStepsAtLeast`.
  core.String? kind;

  /// The minimum number of steps for the achievement to be set to.
  core.int? steps;

  GamesAchievementSetStepsAtLeast({
    this.kind,
    this.steps,
  });

  GamesAchievementSetStepsAtLeast.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          steps: json_.containsKey('steps') ? json_['steps'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (steps != null) 'steps': steps!,
      };
}

/// An image asset object.
class ImageAsset {
  /// The height of the asset.
  core.int? height;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#imageAsset`.
  core.String? kind;

  /// The name of the asset.
  core.String? name;

  /// The URL of the asset.
  core.String? url;

  /// The width of the asset.
  core.int? width;

  ImageAsset({
    this.height,
    this.kind,
    this.name,
    this.url,
    this.width,
  });

  ImageAsset.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (url != null) 'url': url!,
        if (width != null) 'width': width!,
      };
}

/// The Instance resource.
class Instance {
  /// URI which shows where a user can acquire this instance.
  core.String? acquisitionUri;

  /// Platform dependent details for Android.
  InstanceAndroidDetails? androidInstance;

  /// Platform dependent details for iOS.
  InstanceIosDetails? iosInstance;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#instance`.
  core.String? kind;

  /// Localized display name.
  core.String? name;

  /// The platform type.
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED" : Default value. Should be unused.
  /// - "ANDROID" : Instance is for Android.
  /// - "IOS" : Instance is for iOS.
  /// - "WEB_APP" : Instance is for Web App.
  core.String? platformType;

  /// Flag to show if this game instance supports realtime play.
  core.bool? realtimePlay;

  /// Flag to show if this game instance supports turn based play.
  core.bool? turnBasedPlay;

  /// Platform dependent details for Web.
  InstanceWebDetails? webInstance;

  Instance({
    this.acquisitionUri,
    this.androidInstance,
    this.iosInstance,
    this.kind,
    this.name,
    this.platformType,
    this.realtimePlay,
    this.turnBasedPlay,
    this.webInstance,
  });

  Instance.fromJson(core.Map json_)
      : this(
          acquisitionUri: json_.containsKey('acquisitionUri')
              ? json_['acquisitionUri'] as core.String
              : null,
          androidInstance: json_.containsKey('androidInstance')
              ? InstanceAndroidDetails.fromJson(json_['androidInstance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          iosInstance: json_.containsKey('iosInstance')
              ? InstanceIosDetails.fromJson(
                  json_['iosInstance'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          platformType: json_.containsKey('platformType')
              ? json_['platformType'] as core.String
              : null,
          realtimePlay: json_.containsKey('realtimePlay')
              ? json_['realtimePlay'] as core.bool
              : null,
          turnBasedPlay: json_.containsKey('turnBasedPlay')
              ? json_['turnBasedPlay'] as core.bool
              : null,
          webInstance: json_.containsKey('webInstance')
              ? InstanceWebDetails.fromJson(
                  json_['webInstance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acquisitionUri != null) 'acquisitionUri': acquisitionUri!,
        if (androidInstance != null) 'androidInstance': androidInstance!,
        if (iosInstance != null) 'iosInstance': iosInstance!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (platformType != null) 'platformType': platformType!,
        if (realtimePlay != null) 'realtimePlay': realtimePlay!,
        if (turnBasedPlay != null) 'turnBasedPlay': turnBasedPlay!,
        if (webInstance != null) 'webInstance': webInstance!,
      };
}

/// The Android instance details resource.
class InstanceAndroidDetails {
  /// Flag indicating whether the anti-piracy check is enabled.
  core.bool? enablePiracyCheck;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#instanceAndroidDetails`.
  core.String? kind;

  /// Android package name which maps to Google Play URL.
  core.String? packageName;

  /// Indicates that this instance is the default for new installations.
  core.bool? preferred;

  InstanceAndroidDetails({
    this.enablePiracyCheck,
    this.kind,
    this.packageName,
    this.preferred,
  });

  InstanceAndroidDetails.fromJson(core.Map json_)
      : this(
          enablePiracyCheck: json_.containsKey('enablePiracyCheck')
              ? json_['enablePiracyCheck'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          preferred: json_.containsKey('preferred')
              ? json_['preferred'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enablePiracyCheck != null) 'enablePiracyCheck': enablePiracyCheck!,
        if (kind != null) 'kind': kind!,
        if (packageName != null) 'packageName': packageName!,
        if (preferred != null) 'preferred': preferred!,
      };
}

/// The iOS details resource.
class InstanceIosDetails {
  /// Bundle identifier.
  core.String? bundleIdentifier;

  /// iTunes App ID.
  core.String? itunesAppId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#instanceIosDetails`.
  core.String? kind;

  /// Indicates that this instance is the default for new installations on iPad
  /// devices.
  core.bool? preferredForIpad;

  /// Indicates that this instance is the default for new installations on
  /// iPhone devices.
  core.bool? preferredForIphone;

  /// Flag to indicate if this instance supports iPad.
  core.bool? supportIpad;

  /// Flag to indicate if this instance supports iPhone.
  core.bool? supportIphone;

  InstanceIosDetails({
    this.bundleIdentifier,
    this.itunesAppId,
    this.kind,
    this.preferredForIpad,
    this.preferredForIphone,
    this.supportIpad,
    this.supportIphone,
  });

  InstanceIosDetails.fromJson(core.Map json_)
      : this(
          bundleIdentifier: json_.containsKey('bundleIdentifier')
              ? json_['bundleIdentifier'] as core.String
              : null,
          itunesAppId: json_.containsKey('itunesAppId')
              ? json_['itunesAppId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          preferredForIpad: json_.containsKey('preferredForIpad')
              ? json_['preferredForIpad'] as core.bool
              : null,
          preferredForIphone: json_.containsKey('preferredForIphone')
              ? json_['preferredForIphone'] as core.bool
              : null,
          supportIpad: json_.containsKey('supportIpad')
              ? json_['supportIpad'] as core.bool
              : null,
          supportIphone: json_.containsKey('supportIphone')
              ? json_['supportIphone'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleIdentifier != null) 'bundleIdentifier': bundleIdentifier!,
        if (itunesAppId != null) 'itunesAppId': itunesAppId!,
        if (kind != null) 'kind': kind!,
        if (preferredForIpad != null) 'preferredForIpad': preferredForIpad!,
        if (preferredForIphone != null)
          'preferredForIphone': preferredForIphone!,
        if (supportIpad != null) 'supportIpad': supportIpad!,
        if (supportIphone != null) 'supportIphone': supportIphone!,
      };
}

/// The Web details resource.
class InstanceWebDetails {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#instanceWebDetails`.
  core.String? kind;

  /// Launch URL for the game.
  core.String? launchUrl;

  /// Indicates that this instance is the default for new installations.
  core.bool? preferred;

  InstanceWebDetails({
    this.kind,
    this.launchUrl,
    this.preferred,
  });

  InstanceWebDetails.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          launchUrl: json_.containsKey('launchUrl')
              ? json_['launchUrl'] as core.String
              : null,
          preferred: json_.containsKey('preferred')
              ? json_['preferred'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (launchUrl != null) 'launchUrl': launchUrl!,
        if (preferred != null) 'preferred': preferred!,
      };
}

/// The Leaderboard resource.
class Leaderboard {
  /// The icon for the leaderboard.
  core.String? iconUrl;

  /// The leaderboard ID.
  core.String? id;

  /// Indicates whether the icon image being returned is a default image, or is
  /// game-provided.
  core.bool? isIconUrlDefault;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#leaderboard`.
  core.String? kind;

  /// The name of the leaderboard.
  core.String? name;

  /// How scores are ordered.
  /// Possible string values are:
  /// - "SCORE_ORDER_UNSPECIFIED" : Default value. This value is unused.
  /// - "LARGER_IS_BETTER" : Larger values are better; scores are sorted in
  /// descending order
  /// - "SMALLER_IS_BETTER" : Smaller values are better; scores are sorted in
  /// ascending order
  core.String? order;

  Leaderboard({
    this.iconUrl,
    this.id,
    this.isIconUrlDefault,
    this.kind,
    this.name,
    this.order,
  });

  Leaderboard.fromJson(core.Map json_)
      : this(
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isIconUrlDefault: json_.containsKey('isIconUrlDefault')
              ? json_['isIconUrlDefault'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          order:
              json_.containsKey('order') ? json_['order'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (id != null) 'id': id!,
        if (isIconUrlDefault != null) 'isIconUrlDefault': isIconUrlDefault!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (order != null) 'order': order!,
      };
}

/// The Leaderboard Entry resource.
class LeaderboardEntry {
  /// The localized string for the numerical value of this score.
  core.String? formattedScore;

  /// The localized string for the rank of this score for this leaderboard.
  core.String? formattedScoreRank;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#leaderboardEntry`.
  core.String? kind;

  /// The player who holds this score.
  Player? player;

  /// The rank of this score for this leaderboard.
  core.String? scoreRank;

  /// Additional information about the score.
  ///
  /// Values must contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  core.String? scoreTag;

  /// The numerical value of this score.
  core.String? scoreValue;

  /// The time span of this high score.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL_TIME" : The score is an all-time score.
  /// - "WEEKLY" : The score is a weekly score.
  /// - "DAILY" : The score is a daily score.
  core.String? timeSpan;

  /// The timestamp at which this score was recorded, in milliseconds since the
  /// epoch in UTC.
  core.String? writeTimestampMillis;

  LeaderboardEntry({
    this.formattedScore,
    this.formattedScoreRank,
    this.kind,
    this.player,
    this.scoreRank,
    this.scoreTag,
    this.scoreValue,
    this.timeSpan,
    this.writeTimestampMillis,
  });

  LeaderboardEntry.fromJson(core.Map json_)
      : this(
          formattedScore: json_.containsKey('formattedScore')
              ? json_['formattedScore'] as core.String
              : null,
          formattedScoreRank: json_.containsKey('formattedScoreRank')
              ? json_['formattedScoreRank'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          player: json_.containsKey('player')
              ? Player.fromJson(
                  json_['player'] as core.Map<core.String, core.dynamic>)
              : null,
          scoreRank: json_.containsKey('scoreRank')
              ? json_['scoreRank'] as core.String
              : null,
          scoreTag: json_.containsKey('scoreTag')
              ? json_['scoreTag'] as core.String
              : null,
          scoreValue: json_.containsKey('scoreValue')
              ? json_['scoreValue'] as core.String
              : null,
          timeSpan: json_.containsKey('timeSpan')
              ? json_['timeSpan'] as core.String
              : null,
          writeTimestampMillis: json_.containsKey('writeTimestampMillis')
              ? json_['writeTimestampMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedScore != null) 'formattedScore': formattedScore!,
        if (formattedScoreRank != null)
          'formattedScoreRank': formattedScoreRank!,
        if (kind != null) 'kind': kind!,
        if (player != null) 'player': player!,
        if (scoreRank != null) 'scoreRank': scoreRank!,
        if (scoreTag != null) 'scoreTag': scoreTag!,
        if (scoreValue != null) 'scoreValue': scoreValue!,
        if (timeSpan != null) 'timeSpan': timeSpan!,
        if (writeTimestampMillis != null)
          'writeTimestampMillis': writeTimestampMillis!,
      };
}

/// A list of leaderboard objects.
class LeaderboardListResponse {
  /// The leaderboards.
  core.List<Leaderboard>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#leaderboardListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  core.String? nextPageToken;

  LeaderboardListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  LeaderboardListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Leaderboard.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A score rank in a leaderboard.
class LeaderboardScoreRank {
  /// The number of scores in the leaderboard as a string.
  core.String? formattedNumScores;

  /// The rank in the leaderboard as a string.
  core.String? formattedRank;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#leaderboardScoreRank`.
  core.String? kind;

  /// The number of scores in the leaderboard.
  core.String? numScores;

  /// The rank in the leaderboard.
  core.String? rank;

  LeaderboardScoreRank({
    this.formattedNumScores,
    this.formattedRank,
    this.kind,
    this.numScores,
    this.rank,
  });

  LeaderboardScoreRank.fromJson(core.Map json_)
      : this(
          formattedNumScores: json_.containsKey('formattedNumScores')
              ? json_['formattedNumScores'] as core.String
              : null,
          formattedRank: json_.containsKey('formattedRank')
              ? json_['formattedRank'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numScores: json_.containsKey('numScores')
              ? json_['numScores'] as core.String
              : null,
          rank: json_.containsKey('rank') ? json_['rank'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedNumScores != null)
          'formattedNumScores': formattedNumScores!,
        if (formattedRank != null) 'formattedRank': formattedRank!,
        if (kind != null) 'kind': kind!,
        if (numScores != null) 'numScores': numScores!,
        if (rank != null) 'rank': rank!,
      };
}

/// A ListScores response.
class LeaderboardScores {
  /// The scores in the leaderboard.
  core.List<LeaderboardEntry>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#leaderboardScores`.
  core.String? kind;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  /// The total number of scores in the leaderboard.
  core.String? numScores;

  /// The score of the requesting player on the leaderboard.
  ///
  /// The player's score may appear both here and in the list of scores above.
  /// If you are viewing a public leaderboard and the player is not sharing
  /// their gameplay information publicly, the `scoreRank`and
  /// `formattedScoreRank` values will not be present.
  LeaderboardEntry? playerScore;

  /// The pagination token for the previous page of results.
  core.String? prevPageToken;

  LeaderboardScores({
    this.items,
    this.kind,
    this.nextPageToken,
    this.numScores,
    this.playerScore,
    this.prevPageToken,
  });

  LeaderboardScores.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => LeaderboardEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          numScores: json_.containsKey('numScores')
              ? json_['numScores'] as core.String
              : null,
          playerScore: json_.containsKey('playerScore')
              ? LeaderboardEntry.fromJson(
                  json_['playerScore'] as core.Map<core.String, core.dynamic>)
              : null,
          prevPageToken: json_.containsKey('prevPageToken')
              ? json_['prevPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (numScores != null) 'numScores': numScores!,
        if (playerScore != null) 'playerScore': playerScore!,
        if (prevPageToken != null) 'prevPageToken': prevPageToken!,
      };
}

/// The metagame config resource
class MetagameConfig {
  /// Current version of the metagame configuration data.
  ///
  /// When this data is updated, the version number will be increased by one.
  core.int? currentVersion;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#metagameConfig`.
  core.String? kind;

  /// The list of player levels.
  core.List<PlayerLevel>? playerLevels;

  MetagameConfig({
    this.currentVersion,
    this.kind,
    this.playerLevels,
  });

  MetagameConfig.fromJson(core.Map json_)
      : this(
          currentVersion: json_.containsKey('currentVersion')
              ? json_['currentVersion'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          playerLevels: json_.containsKey('playerLevels')
              ? (json_['playerLevels'] as core.List)
                  .map((value) => PlayerLevel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentVersion != null) 'currentVersion': currentVersion!,
        if (kind != null) 'kind': kind!,
        if (playerLevels != null) 'playerLevels': playerLevels!,
      };
}

/// A representation of the individual components of the name.
class PlayerName {
  /// The family name of this player.
  ///
  /// In some places, this is known as the last name.
  core.String? familyName;

  /// The given name of this player.
  ///
  /// In some places, this is known as the first name.
  core.String? givenName;

  PlayerName({
    this.familyName,
    this.givenName,
  });

  PlayerName.fromJson(core.Map json_)
      : this(
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          givenName: json_.containsKey('givenName')
              ? json_['givenName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (familyName != null) 'familyName': familyName!,
        if (givenName != null) 'givenName': givenName!,
      };
}

/// A Player resource.
class Player {
  /// The base URL for the image that represents the player.
  core.String? avatarImageUrl;

  /// The url to the landscape mode player banner image.
  core.String? bannerUrlLandscape;

  /// The url to the portrait mode player banner image.
  core.String? bannerUrlPortrait;

  /// The name to display for the player.
  core.String? displayName;

  /// An object to represent Play Game experience information for the player.
  PlayerExperienceInfo? experienceInfo;

  /// The friend status of the given player, relative to the requester.
  ///
  /// This is unset if the player is not sharing their friends list with the
  /// game.
  /// Possible string values are:
  /// - "FRIEND_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "NO_RELATIONSHIP" : There is no relationship between the players.
  /// - "FRIEND" : The player and requester are friends.
  core.String? friendStatus;

  /// Per-application unique player identifier.
  core.String? gamePlayerId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#player`
  core.String? kind;

  /// A representation of the individual components of the name.
  PlayerName? name;

  /// The player ID that was used for this player the first time they signed
  /// into the game in question.
  ///
  /// This is only populated for calls to player.get for the requesting player,
  /// only if the player ID has subsequently changed, and only to clients that
  /// support remapping player IDs.
  core.String? originalPlayerId;

  /// The ID of the player.
  core.String? playerId;

  /// The player's profile settings.
  ///
  /// Controls whether or not the player's profile is visible to other players.
  ProfileSettings? profileSettings;

  /// The player's title rewarded for their game activities.
  core.String? title;

  Player({
    this.avatarImageUrl,
    this.bannerUrlLandscape,
    this.bannerUrlPortrait,
    this.displayName,
    this.experienceInfo,
    this.friendStatus,
    this.gamePlayerId,
    this.kind,
    this.name,
    this.originalPlayerId,
    this.playerId,
    this.profileSettings,
    this.title,
  });

  Player.fromJson(core.Map json_)
      : this(
          avatarImageUrl: json_.containsKey('avatarImageUrl')
              ? json_['avatarImageUrl'] as core.String
              : null,
          bannerUrlLandscape: json_.containsKey('bannerUrlLandscape')
              ? json_['bannerUrlLandscape'] as core.String
              : null,
          bannerUrlPortrait: json_.containsKey('bannerUrlPortrait')
              ? json_['bannerUrlPortrait'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          experienceInfo: json_.containsKey('experienceInfo')
              ? PlayerExperienceInfo.fromJson(json_['experienceInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          friendStatus: json_.containsKey('friendStatus')
              ? json_['friendStatus'] as core.String
              : null,
          gamePlayerId: json_.containsKey('gamePlayerId')
              ? json_['gamePlayerId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name')
              ? PlayerName.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
          originalPlayerId: json_.containsKey('originalPlayerId')
              ? json_['originalPlayerId'] as core.String
              : null,
          playerId: json_.containsKey('playerId')
              ? json_['playerId'] as core.String
              : null,
          profileSettings: json_.containsKey('profileSettings')
              ? ProfileSettings.fromJson(json_['profileSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avatarImageUrl != null) 'avatarImageUrl': avatarImageUrl!,
        if (bannerUrlLandscape != null)
          'bannerUrlLandscape': bannerUrlLandscape!,
        if (bannerUrlPortrait != null) 'bannerUrlPortrait': bannerUrlPortrait!,
        if (displayName != null) 'displayName': displayName!,
        if (experienceInfo != null) 'experienceInfo': experienceInfo!,
        if (friendStatus != null) 'friendStatus': friendStatus!,
        if (gamePlayerId != null) 'gamePlayerId': gamePlayerId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (originalPlayerId != null) 'originalPlayerId': originalPlayerId!,
        if (playerId != null) 'playerId': playerId!,
        if (profileSettings != null) 'profileSettings': profileSettings!,
        if (title != null) 'title': title!,
      };
}

/// An achievement object.
class PlayerAchievement {
  /// The state of the achievement.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "HIDDEN" : Achievement is hidden.
  /// - "REVEALED" : Achievement is revealed.
  /// - "UNLOCKED" : Achievement is unlocked.
  core.String? achievementState;

  /// The current steps for an incremental achievement.
  core.int? currentSteps;

  /// Experience points earned for the achievement.
  ///
  /// This field is absent for achievements that have not yet been unlocked and
  /// 0 for achievements that have been unlocked by testers but that are
  /// unpublished.
  core.String? experiencePoints;

  /// The current steps for an incremental achievement as a string.
  core.String? formattedCurrentStepsString;

  /// The ID of the achievement.
  core.String? id;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerAchievement`.
  core.String? kind;

  /// The timestamp of the last modification to this achievement's state.
  core.String? lastUpdatedTimestamp;

  PlayerAchievement({
    this.achievementState,
    this.currentSteps,
    this.experiencePoints,
    this.formattedCurrentStepsString,
    this.id,
    this.kind,
    this.lastUpdatedTimestamp,
  });

  PlayerAchievement.fromJson(core.Map json_)
      : this(
          achievementState: json_.containsKey('achievementState')
              ? json_['achievementState'] as core.String
              : null,
          currentSteps: json_.containsKey('currentSteps')
              ? json_['currentSteps'] as core.int
              : null,
          experiencePoints: json_.containsKey('experiencePoints')
              ? json_['experiencePoints'] as core.String
              : null,
          formattedCurrentStepsString:
              json_.containsKey('formattedCurrentStepsString')
                  ? json_['formattedCurrentStepsString'] as core.String
                  : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastUpdatedTimestamp: json_.containsKey('lastUpdatedTimestamp')
              ? json_['lastUpdatedTimestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementState != null) 'achievementState': achievementState!,
        if (currentSteps != null) 'currentSteps': currentSteps!,
        if (experiencePoints != null) 'experiencePoints': experiencePoints!,
        if (formattedCurrentStepsString != null)
          'formattedCurrentStepsString': formattedCurrentStepsString!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastUpdatedTimestamp != null)
          'lastUpdatedTimestamp': lastUpdatedTimestamp!,
      };
}

/// A list of achievement objects.
class PlayerAchievementListResponse {
  /// The achievements.
  core.List<PlayerAchievement>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerAchievementListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  core.String? nextPageToken;

  PlayerAchievementListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  PlayerAchievementListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => PlayerAchievement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An event status resource.
class PlayerEvent {
  /// The ID of the event definition.
  core.String? definitionId;

  /// The current number of times this event has occurred, as a string.
  ///
  /// The formatting of this string depends on the configuration of your event
  /// in the Play Games Developer Console.
  core.String? formattedNumEvents;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerEvent`.
  core.String? kind;

  /// The current number of times this event has occurred.
  core.String? numEvents;

  /// The ID of the player.
  core.String? playerId;

  PlayerEvent({
    this.definitionId,
    this.formattedNumEvents,
    this.kind,
    this.numEvents,
    this.playerId,
  });

  PlayerEvent.fromJson(core.Map json_)
      : this(
          definitionId: json_.containsKey('definitionId')
              ? json_['definitionId'] as core.String
              : null,
          formattedNumEvents: json_.containsKey('formattedNumEvents')
              ? json_['formattedNumEvents'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numEvents: json_.containsKey('numEvents')
              ? json_['numEvents'] as core.String
              : null,
          playerId: json_.containsKey('playerId')
              ? json_['playerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (definitionId != null) 'definitionId': definitionId!,
        if (formattedNumEvents != null)
          'formattedNumEvents': formattedNumEvents!,
        if (kind != null) 'kind': kind!,
        if (numEvents != null) 'numEvents': numEvents!,
        if (playerId != null) 'playerId': playerId!,
      };
}

/// A ListByPlayer response.
class PlayerEventListResponse {
  /// The player events.
  core.List<PlayerEvent>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerEventListResponse`.
  core.String? kind;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  PlayerEventListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  PlayerEventListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => PlayerEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// 1P/3P metadata about the player's experience.
class PlayerExperienceInfo {
  /// The current number of experience points for the player.
  core.String? currentExperiencePoints;

  /// The current level of the player.
  PlayerLevel? currentLevel;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerExperienceInfo`.
  core.String? kind;

  /// The timestamp when the player was leveled up, in millis since Unix epoch
  /// UTC.
  core.String? lastLevelUpTimestampMillis;

  /// The next level of the player.
  ///
  /// If the current level is the maximum level, this should be same as the
  /// current level.
  PlayerLevel? nextLevel;

  PlayerExperienceInfo({
    this.currentExperiencePoints,
    this.currentLevel,
    this.kind,
    this.lastLevelUpTimestampMillis,
    this.nextLevel,
  });

  PlayerExperienceInfo.fromJson(core.Map json_)
      : this(
          currentExperiencePoints: json_.containsKey('currentExperiencePoints')
              ? json_['currentExperiencePoints'] as core.String
              : null,
          currentLevel: json_.containsKey('currentLevel')
              ? PlayerLevel.fromJson(
                  json_['currentLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastLevelUpTimestampMillis:
              json_.containsKey('lastLevelUpTimestampMillis')
                  ? json_['lastLevelUpTimestampMillis'] as core.String
                  : null,
          nextLevel: json_.containsKey('nextLevel')
              ? PlayerLevel.fromJson(
                  json_['nextLevel'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentExperiencePoints != null)
          'currentExperiencePoints': currentExperiencePoints!,
        if (currentLevel != null) 'currentLevel': currentLevel!,
        if (kind != null) 'kind': kind!,
        if (lastLevelUpTimestampMillis != null)
          'lastLevelUpTimestampMillis': lastLevelUpTimestampMillis!,
        if (nextLevel != null) 'nextLevel': nextLevel!,
      };
}

/// A player leaderboard score object.
class PlayerLeaderboardScore {
  /// The rank of the score in the friends collection for this leaderboard.
  LeaderboardScoreRank? friendsRank;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerLeaderboardScore`.
  core.String? kind;

  /// The ID of the leaderboard this score is in.
  core.String? leaderboardId;

  /// The public rank of the score in this leaderboard.
  ///
  /// This object will not be present if the user is not sharing their scores
  /// publicly.
  LeaderboardScoreRank? publicRank;

  /// The formatted value of this score.
  core.String? scoreString;

  /// Additional information about the score.
  ///
  /// Values must contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  core.String? scoreTag;

  /// The numerical value of this score.
  core.String? scoreValue;

  /// The social rank of the score in this leaderboard.
  LeaderboardScoreRank? socialRank;

  /// The time span of this score.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL_TIME" : The score is an all-time score.
  /// - "WEEKLY" : The score is a weekly score.
  /// - "DAILY" : The score is a daily score.
  core.String? timeSpan;

  /// The timestamp at which this score was recorded, in milliseconds since the
  /// epoch in UTC.
  core.String? writeTimestamp;

  PlayerLeaderboardScore({
    this.friendsRank,
    this.kind,
    this.leaderboardId,
    this.publicRank,
    this.scoreString,
    this.scoreTag,
    this.scoreValue,
    this.socialRank,
    this.timeSpan,
    this.writeTimestamp,
  });

  PlayerLeaderboardScore.fromJson(core.Map json_)
      : this(
          friendsRank: json_.containsKey('friendsRank')
              ? LeaderboardScoreRank.fromJson(
                  json_['friendsRank'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          leaderboardId: json_.containsKey('leaderboard_id')
              ? json_['leaderboard_id'] as core.String
              : null,
          publicRank: json_.containsKey('publicRank')
              ? LeaderboardScoreRank.fromJson(
                  json_['publicRank'] as core.Map<core.String, core.dynamic>)
              : null,
          scoreString: json_.containsKey('scoreString')
              ? json_['scoreString'] as core.String
              : null,
          scoreTag: json_.containsKey('scoreTag')
              ? json_['scoreTag'] as core.String
              : null,
          scoreValue: json_.containsKey('scoreValue')
              ? json_['scoreValue'] as core.String
              : null,
          socialRank: json_.containsKey('socialRank')
              ? LeaderboardScoreRank.fromJson(
                  json_['socialRank'] as core.Map<core.String, core.dynamic>)
              : null,
          timeSpan: json_.containsKey('timeSpan')
              ? json_['timeSpan'] as core.String
              : null,
          writeTimestamp: json_.containsKey('writeTimestamp')
              ? json_['writeTimestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (friendsRank != null) 'friendsRank': friendsRank!,
        if (kind != null) 'kind': kind!,
        if (leaderboardId != null) 'leaderboard_id': leaderboardId!,
        if (publicRank != null) 'publicRank': publicRank!,
        if (scoreString != null) 'scoreString': scoreString!,
        if (scoreTag != null) 'scoreTag': scoreTag!,
        if (scoreValue != null) 'scoreValue': scoreValue!,
        if (socialRank != null) 'socialRank': socialRank!,
        if (timeSpan != null) 'timeSpan': timeSpan!,
        if (writeTimestamp != null) 'writeTimestamp': writeTimestamp!,
      };
}

/// A list of player leaderboard scores.
class PlayerLeaderboardScoreListResponse {
  /// The leaderboard scores.
  core.List<PlayerLeaderboardScore>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `games#playerLeaderboardScoreListResponse`.
  core.String? kind;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  /// The Player resources for the owner of this score.
  Player? player;

  PlayerLeaderboardScoreListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
    this.player,
  });

  PlayerLeaderboardScoreListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => PlayerLeaderboardScore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          player: json_.containsKey('player')
              ? Player.fromJson(
                  json_['player'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (player != null) 'player': player!,
      };
}

/// 1P/3P metadata about a user's level.
class PlayerLevel {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerLevel`.
  core.String? kind;

  /// The level for the user.
  core.int? level;

  /// The maximum experience points for this level.
  core.String? maxExperiencePoints;

  /// The minimum experience points for this level.
  core.String? minExperiencePoints;

  PlayerLevel({
    this.kind,
    this.level,
    this.maxExperiencePoints,
    this.minExperiencePoints,
  });

  PlayerLevel.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          level: json_.containsKey('level') ? json_['level'] as core.int : null,
          maxExperiencePoints: json_.containsKey('maxExperiencePoints')
              ? json_['maxExperiencePoints'] as core.String
              : null,
          minExperiencePoints: json_.containsKey('minExperiencePoints')
              ? json_['minExperiencePoints'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (level != null) 'level': level!,
        if (maxExperiencePoints != null)
          'maxExperiencePoints': maxExperiencePoints!,
        if (minExperiencePoints != null)
          'minExperiencePoints': minExperiencePoints!,
      };
}

/// A third party player list response.
class PlayerListResponse {
  /// The players.
  core.List<Player>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  core.String? nextPageToken;

  PlayerListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  PlayerListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Player.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A player score.
class PlayerScore {
  /// The formatted score for this player score.
  core.String? formattedScore;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerScore`.
  core.String? kind;

  /// The numerical value for this player score.
  core.String? score;

  /// Additional information about this score.
  ///
  /// Values will contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  core.String? scoreTag;

  /// The time span for this player score.
  /// Possible string values are:
  /// - "SCORE_TIME_SPAN_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL_TIME" : The score is an all-time score.
  /// - "WEEKLY" : The score is a weekly score.
  /// - "DAILY" : The score is a daily score.
  core.String? timeSpan;

  PlayerScore({
    this.formattedScore,
    this.kind,
    this.score,
    this.scoreTag,
    this.timeSpan,
  });

  PlayerScore.fromJson(core.Map json_)
      : this(
          formattedScore: json_.containsKey('formattedScore')
              ? json_['formattedScore'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          score:
              json_.containsKey('score') ? json_['score'] as core.String : null,
          scoreTag: json_.containsKey('scoreTag')
              ? json_['scoreTag'] as core.String
              : null,
          timeSpan: json_.containsKey('timeSpan')
              ? json_['timeSpan'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedScore != null) 'formattedScore': formattedScore!,
        if (kind != null) 'kind': kind!,
        if (score != null) 'score': score!,
        if (scoreTag != null) 'scoreTag': scoreTag!,
        if (timeSpan != null) 'timeSpan': timeSpan!,
      };
}

/// A list of score submission statuses.
class PlayerScoreListResponse {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerScoreListResponse`.
  core.String? kind;

  /// The score submissions statuses.
  core.List<PlayerScoreResponse>? submittedScores;

  PlayerScoreListResponse({
    this.kind,
    this.submittedScores,
  });

  PlayerScoreListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          submittedScores: json_.containsKey('submittedScores')
              ? (json_['submittedScores'] as core.List)
                  .map((value) => PlayerScoreResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (submittedScores != null) 'submittedScores': submittedScores!,
      };
}

/// A list of leaderboard entry resources.
class PlayerScoreResponse {
  /// The time spans where the submitted score is better than the existing score
  /// for that time span.
  core.List<core.String>? beatenScoreTimeSpans;

  /// The formatted value of the submitted score.
  core.String? formattedScore;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerScoreResponse`.
  core.String? kind;

  /// The leaderboard ID that this score was submitted to.
  core.String? leaderboardId;

  /// Additional information about this score.
  ///
  /// Values will contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  core.String? scoreTag;

  /// The scores in time spans that have not been beaten.
  ///
  /// As an example, the submitted score may be better than the player's `DAILY`
  /// score, but not better than the player's scores for the `WEEKLY` or
  /// `ALL_TIME` time spans.
  core.List<PlayerScore>? unbeatenScores;

  PlayerScoreResponse({
    this.beatenScoreTimeSpans,
    this.formattedScore,
    this.kind,
    this.leaderboardId,
    this.scoreTag,
    this.unbeatenScores,
  });

  PlayerScoreResponse.fromJson(core.Map json_)
      : this(
          beatenScoreTimeSpans: json_.containsKey('beatenScoreTimeSpans')
              ? (json_['beatenScoreTimeSpans'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          formattedScore: json_.containsKey('formattedScore')
              ? json_['formattedScore'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          leaderboardId: json_.containsKey('leaderboardId')
              ? json_['leaderboardId'] as core.String
              : null,
          scoreTag: json_.containsKey('scoreTag')
              ? json_['scoreTag'] as core.String
              : null,
          unbeatenScores: json_.containsKey('unbeatenScores')
              ? (json_['unbeatenScores'] as core.List)
                  .map((value) => PlayerScore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beatenScoreTimeSpans != null)
          'beatenScoreTimeSpans': beatenScoreTimeSpans!,
        if (formattedScore != null) 'formattedScore': formattedScore!,
        if (kind != null) 'kind': kind!,
        if (leaderboardId != null) 'leaderboardId': leaderboardId!,
        if (scoreTag != null) 'scoreTag': scoreTag!,
        if (unbeatenScores != null) 'unbeatenScores': unbeatenScores!,
      };
}

/// A list of score submission requests.
class PlayerScoreSubmissionList {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#playerScoreSubmissionList`.
  core.String? kind;

  /// The score submissions.
  core.List<ScoreSubmission>? scores;

  PlayerScoreSubmissionList({
    this.kind,
    this.scores,
  });

  PlayerScoreSubmissionList.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          scores: json_.containsKey('scores')
              ? (json_['scores'] as core.List)
                  .map((value) => ScoreSubmission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (scores != null) 'scores': scores!,
      };
}

/// Profile settings
class ProfileSettings {
  ///
  /// Possible string values are:
  /// - "FRIENDS_LIST_VISIBILITY_UNSPECIFIED" : Unused.
  /// - "VISIBLE" : The friends list is currently visible to the game.
  /// - "REQUEST_REQUIRED" : The developer does not have access to the friends
  /// list, but can call the Android API to show a consent dialog.
  /// - "UNAVAILABLE" : The friends list is currently unavailable for this user,
  /// and it is not possible to request access at this time, either because the
  /// user has permanently declined or the friends feature is not available to
  /// them. In this state, any attempts to request access to the friends list
  /// will be unsuccessful.
  core.String? friendsListVisibility;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#profileSettings`.
  core.String? kind;

  /// Whether the player's profile is visible to the currently signed in player.
  core.bool? profileVisible;

  ProfileSettings({
    this.friendsListVisibility,
    this.kind,
    this.profileVisible,
  });

  ProfileSettings.fromJson(core.Map json_)
      : this(
          friendsListVisibility: json_.containsKey('friendsListVisibility')
              ? json_['friendsListVisibility'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          profileVisible: json_.containsKey('profileVisible')
              ? json_['profileVisible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (friendsListVisibility != null)
          'friendsListVisibility': friendsListVisibility!,
        if (kind != null) 'kind': kind!,
        if (profileVisible != null) 'profileVisible': profileVisible!,
      };
}

/// A third party checking a revision response.
class RevisionCheckResponse {
  /// The version of the API this client revision should use when calling API
  /// methods.
  core.String? apiVersion;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#revisionCheckResponse`.
  core.String? kind;

  /// The result of the revision check.
  /// Possible string values are:
  /// - "REVISION_STATUS_UNSPECIFIED" : Default value. This value is unused.
  /// - "OK" : The revision being used is current.
  /// - "DEPRECATED" : There is currently a newer version available, but the
  /// revision being used still works.
  /// - "INVALID" : The revision being used is not supported in any released
  /// version.
  core.String? revisionStatus;

  RevisionCheckResponse({
    this.apiVersion,
    this.kind,
    this.revisionStatus,
  });

  RevisionCheckResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          revisionStatus: json_.containsKey('revisionStatus')
              ? json_['revisionStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (revisionStatus != null) 'revisionStatus': revisionStatus!,
      };
}

/// Scoped player identifiers.
class ScopedPlayerIds {
  /// Identifier of the player across all games of the given developer.
  ///
  /// Every player has the same developer_player_key in all games of one
  /// developer. Developer player key changes for the game if the game is
  /// transferred to another developer. Note that game_player_id will stay
  /// unchanged.
  core.String? developerPlayerKey;

  /// Game-scoped player identifier.
  ///
  /// This is the same id that is returned in GetPlayer game_player_id field.
  core.String? gamePlayerId;

  ScopedPlayerIds({
    this.developerPlayerKey,
    this.gamePlayerId,
  });

  ScopedPlayerIds.fromJson(core.Map json_)
      : this(
          developerPlayerKey: json_.containsKey('developerPlayerKey')
              ? json_['developerPlayerKey'] as core.String
              : null,
          gamePlayerId: json_.containsKey('gamePlayerId')
              ? json_['gamePlayerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerPlayerKey != null)
          'developerPlayerKey': developerPlayerKey!,
        if (gamePlayerId != null) 'gamePlayerId': gamePlayerId!,
      };
}

/// A request to submit a score to leaderboards.
class ScoreSubmission {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#scoreSubmission`.
  core.String? kind;

  /// The leaderboard this score is being submitted to.
  core.String? leaderboardId;

  /// The new score being submitted.
  core.String? score;

  /// Additional information about this score.
  ///
  /// Values will contain no more than 64 URI-safe characters as defined by
  /// section 2.3 of RFC 3986.
  core.String? scoreTag;

  /// Signature Values will contain URI-safe characters as defined by section
  /// 2.3 of RFC 3986.
  core.String? signature;

  ScoreSubmission({
    this.kind,
    this.leaderboardId,
    this.score,
    this.scoreTag,
    this.signature,
  });

  ScoreSubmission.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          leaderboardId: json_.containsKey('leaderboardId')
              ? json_['leaderboardId'] as core.String
              : null,
          score:
              json_.containsKey('score') ? json_['score'] as core.String : null,
          scoreTag: json_.containsKey('scoreTag')
              ? json_['scoreTag'] as core.String
              : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (leaderboardId != null) 'leaderboardId': leaderboardId!,
        if (score != null) 'score': score!,
        if (scoreTag != null) 'scoreTag': scoreTag!,
        if (signature != null) 'signature': signature!,
      };
}

/// An snapshot object.
class Snapshot {
  /// The cover image of this snapshot.
  ///
  /// May be absent if there is no image.
  SnapshotImage? coverImage;

  /// The description of this snapshot.
  core.String? description;

  /// The ID of the file underlying this snapshot in the Drive API.
  ///
  /// Only present if the snapshot is a view on a Drive file and the file is
  /// owned by the caller.
  core.String? driveId;

  /// The duration associated with this snapshot, in millis.
  core.String? durationMillis;

  /// The ID of the snapshot.
  core.String? id;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#snapshot`.
  core.String? kind;

  /// The timestamp (in millis since Unix epoch) of the last modification to
  /// this snapshot.
  core.String? lastModifiedMillis;

  /// The progress value (64-bit integer set by developer) associated with this
  /// snapshot.
  core.String? progressValue;

  /// The title of this snapshot.
  core.String? title;

  /// The type of this snapshot.
  /// Possible string values are:
  /// - "SNAPSHOT_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "SAVE_GAME" : A snapshot representing a save game.
  core.String? type;

  /// The unique name provided when the snapshot was created.
  core.String? uniqueName;

  Snapshot({
    this.coverImage,
    this.description,
    this.driveId,
    this.durationMillis,
    this.id,
    this.kind,
    this.lastModifiedMillis,
    this.progressValue,
    this.title,
    this.type,
    this.uniqueName,
  });

  Snapshot.fromJson(core.Map json_)
      : this(
          coverImage: json_.containsKey('coverImage')
              ? SnapshotImage.fromJson(
                  json_['coverImage'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          driveId: json_.containsKey('driveId')
              ? json_['driveId'] as core.String
              : null,
          durationMillis: json_.containsKey('durationMillis')
              ? json_['durationMillis'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedMillis: json_.containsKey('lastModifiedMillis')
              ? json_['lastModifiedMillis'] as core.String
              : null,
          progressValue: json_.containsKey('progressValue')
              ? json_['progressValue'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uniqueName: json_.containsKey('uniqueName')
              ? json_['uniqueName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coverImage != null) 'coverImage': coverImage!,
        if (description != null) 'description': description!,
        if (driveId != null) 'driveId': driveId!,
        if (durationMillis != null) 'durationMillis': durationMillis!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedMillis != null)
          'lastModifiedMillis': lastModifiedMillis!,
        if (progressValue != null) 'progressValue': progressValue!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
        if (uniqueName != null) 'uniqueName': uniqueName!,
      };
}

/// An image of a snapshot.
class SnapshotImage {
  /// The height of the image.
  core.int? height;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#snapshotImage`.
  core.String? kind;

  /// The MIME type of the image.
  core.String? mimeType;

  /// The URL of the image.
  ///
  /// This URL may be invalidated at any time and should not be cached.
  core.String? url;

  /// The width of the image.
  core.int? width;

  SnapshotImage({
    this.height,
    this.kind,
    this.mimeType,
    this.url,
    this.width,
  });

  SnapshotImage.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mimeType: json_.containsKey('mime_type')
              ? json_['mime_type'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (kind != null) 'kind': kind!,
        if (mimeType != null) 'mime_type': mimeType!,
        if (url != null) 'url': url!,
        if (width != null) 'width': width!,
      };
}

/// A third party list snapshots response.
class SnapshotListResponse {
  /// The snapshots.
  core.List<Snapshot>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#snapshotListResponse`.
  core.String? kind;

  /// Token corresponding to the next page of results.
  ///
  /// If there are no more results, the token is omitted.
  core.String? nextPageToken;

  SnapshotListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  SnapshotListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Snapshot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A third party stats resource.
class StatsResponse {
  /// Average session length in minutes of the player.
  ///
  /// E.g., 1, 30, 60, ... . Not populated if there is not enough information.
  core.double? avgSessionLengthMinutes;

  /// The probability of the player not returning to play the game in the next
  /// day.
  ///
  /// E.g., 0, 0.1, 0.5, ..., 1.0. Not populated if there is not enough
  /// information.
  core.double? churnProbability;

  /// Number of days since the player last played this game.
  ///
  /// E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
  core.int? daysSinceLastPlayed;

  /// The probability of the player going to spend beyond a threshold amount of
  /// money.
  ///
  /// E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough
  /// information.
  core.double? highSpenderProbability;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `games#statsResponse`.
  core.String? kind;

  /// Number of in-app purchases made by the player in this game.
  ///
  /// E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
  core.int? numPurchases;

  /// The approximate number of sessions of the player within the last 28 days,
  /// where a session begins when the player is connected to Play Games Services
  /// and ends when they are disconnected.
  ///
  /// E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
  core.int? numSessions;

  /// The approximation of the sessions percentile of the player within the last
  /// 30 days, where a session begins when the player is connected to Play Games
  /// Services and ends when they are disconnected.
  ///
  /// E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough
  /// information.
  core.double? numSessionsPercentile;

  /// The approximate spend percentile of the player in this game.
  ///
  /// E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough
  /// information.
  core.double? spendPercentile;

  /// The probability of the player going to spend the game in the next seven
  /// days.
  ///
  /// E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough
  /// information.
  core.double? spendProbability;

  /// The predicted amount of money that the player going to spend in the next
  /// 28 days.
  ///
  /// E.g., 1, 30, 60, ... . Not populated if there is not enough information.
  core.double? totalSpendNext28Days;

  StatsResponse({
    this.avgSessionLengthMinutes,
    this.churnProbability,
    this.daysSinceLastPlayed,
    this.highSpenderProbability,
    this.kind,
    this.numPurchases,
    this.numSessions,
    this.numSessionsPercentile,
    this.spendPercentile,
    this.spendProbability,
    this.totalSpendNext28Days,
  });

  StatsResponse.fromJson(core.Map json_)
      : this(
          avgSessionLengthMinutes:
              json_.containsKey('avg_session_length_minutes')
                  ? (json_['avg_session_length_minutes'] as core.num).toDouble()
                  : null,
          churnProbability: json_.containsKey('churn_probability')
              ? (json_['churn_probability'] as core.num).toDouble()
              : null,
          daysSinceLastPlayed: json_.containsKey('days_since_last_played')
              ? json_['days_since_last_played'] as core.int
              : null,
          highSpenderProbability: json_.containsKey('high_spender_probability')
              ? (json_['high_spender_probability'] as core.num).toDouble()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          numPurchases: json_.containsKey('num_purchases')
              ? json_['num_purchases'] as core.int
              : null,
          numSessions: json_.containsKey('num_sessions')
              ? json_['num_sessions'] as core.int
              : null,
          numSessionsPercentile: json_.containsKey('num_sessions_percentile')
              ? (json_['num_sessions_percentile'] as core.num).toDouble()
              : null,
          spendPercentile: json_.containsKey('spend_percentile')
              ? (json_['spend_percentile'] as core.num).toDouble()
              : null,
          spendProbability: json_.containsKey('spend_probability')
              ? (json_['spend_probability'] as core.num).toDouble()
              : null,
          totalSpendNext28Days: json_.containsKey('total_spend_next_28_days')
              ? (json_['total_spend_next_28_days'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avgSessionLengthMinutes != null)
          'avg_session_length_minutes': avgSessionLengthMinutes!,
        if (churnProbability != null) 'churn_probability': churnProbability!,
        if (daysSinceLastPlayed != null)
          'days_since_last_played': daysSinceLastPlayed!,
        if (highSpenderProbability != null)
          'high_spender_probability': highSpenderProbability!,
        if (kind != null) 'kind': kind!,
        if (numPurchases != null) 'num_purchases': numPurchases!,
        if (numSessions != null) 'num_sessions': numSessions!,
        if (numSessionsPercentile != null)
          'num_sessions_percentile': numSessionsPercentile!,
        if (spendPercentile != null) 'spend_percentile': spendPercentile!,
        if (spendProbability != null) 'spend_probability': spendProbability!,
        if (totalSpendNext28Days != null)
          'total_spend_next_28_days': totalSpendNext28Days!,
      };
}
