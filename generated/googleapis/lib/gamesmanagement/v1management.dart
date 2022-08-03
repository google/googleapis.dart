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

/// Google Play Game Management - v1management
///
/// The Google Play Game Management API allows developers to manage resources
/// from the Google Play Game service.
///
/// For more information, see <https://developers.google.com/games/>
///
/// Create an instance of [GamesManagementApi] to access these resources:
///
/// - [AchievementsResource]
/// - [ApplicationsResource]
/// - [EventsResource]
/// - [PlayersResource]
/// - [ScoresResource]
library gamesManagement.v1management;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Play Game Management API allows developers to manage resources
/// from the Google Play Game service.
class GamesManagementApi {
  /// Create, edit, and delete your Google Play Games activity
  static const gamesScope = 'https://www.googleapis.com/auth/games';

  final commons.ApiRequester _requester;

  AchievementsResource get achievements => AchievementsResource(_requester);
  ApplicationsResource get applications => ApplicationsResource(_requester);
  EventsResource get events => EventsResource(_requester);
  PlayersResource get players => PlayersResource(_requester);
  ScoresResource get scores => ScoresResource(_requester);

  GamesManagementApi(http.Client client,
      {core.String rootUrl = 'https://gamesmanagement.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AchievementsResource {
  final commons.ApiRequester _requester;

  AchievementsResource(commons.ApiRequester client) : _requester = client;

  /// Resets the achievement with the given ID for the currently authenticated
  /// player.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementResetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementResetResponse> reset(
    core.String achievementId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementResetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets all achievements for the currently authenticated player for your
  /// application.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AchievementResetAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AchievementResetAllResponse> resetAll({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/achievements/reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AchievementResetAllResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets all draft achievements for all players.
  ///
  /// This method is only available to user accounts for your developer console.
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
  async.Future<void> resetAllForAllPlayers({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/achievements/resetAllForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets the achievement with the given ID for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft achievements can be reset.
  ///
  /// Request parameters:
  ///
  /// [achievementId] - The ID of the achievement used by this method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> resetForAllPlayers(
    core.String achievementId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/achievements/' +
        commons.escapeVariable('$achievementId') +
        '/resetForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets achievements with the given IDs for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft achievements may be reset.
  ///
  /// [request] - The metadata request object.
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
  async.Future<void> resetMultipleForAllPlayers(
    AchievementResetMultipleForAllRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/achievements/resetMultipleForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class ApplicationsResource {
  final commons.ApiRequester _requester;

  ApplicationsResource(commons.ApiRequester client) : _requester = client;

  /// Get the list of players hidden from the given application.
  ///
  /// This method is only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
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
  /// Completes with a [HiddenPlayerList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HiddenPlayerList> listHidden(
    core.String applicationId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/applications/' +
        commons.escapeVariable('$applicationId') +
        '/players/hidden';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HiddenPlayerList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// Resets all player progress on the event with the given ID for the
  /// currently authenticated player.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [eventId] - The ID of the event.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> reset(
    core.String eventId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/events/' +
        commons.escapeVariable('$eventId') +
        '/reset';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets all player progress on all events for the currently authenticated
  /// player.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
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
  async.Future<void> resetAll({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/events/reset';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets all draft events for all players.
  ///
  /// This method is only available to user accounts for your developer console.
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
  async.Future<void> resetAllForAllPlayers({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/events/resetAllForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets the event with the given ID for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft events can be reset.
  ///
  /// Request parameters:
  ///
  /// [eventId] - The ID of the event.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> resetForAllPlayers(
    core.String eventId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/events/' +
        commons.escapeVariable('$eventId') +
        '/resetForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets events with the given IDs for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft events may be reset.
  ///
  /// [request] - The metadata request object.
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
  async.Future<void> resetMultipleForAllPlayers(
    EventsResetMultipleForAllRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/events/resetMultipleForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class PlayersResource {
  final commons.ApiRequester _requester;

  PlayersResource(commons.ApiRequester client) : _requester = client;

  /// Hide the given player's leaderboard scores from the given application.
  ///
  /// This method is only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> hide(
    core.String applicationId,
    core.String playerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/applications/' +
        commons.escapeVariable('$applicationId') +
        '/players/hidden/' +
        commons.escapeVariable('$playerId');

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Unhide the given player's leaderboard scores from the given application.
  ///
  /// This method is only available to user accounts for your developer console.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - The application ID from the Google Play developer
  /// console.
  ///
  /// [playerId] - A player ID. A value of `me` may be used in place of the
  /// authenticated player's ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> unhide(
    core.String applicationId,
    core.String playerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/applications/' +
        commons.escapeVariable('$applicationId') +
        '/players/hidden/' +
        commons.escapeVariable('$playerId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class ScoresResource {
  final commons.ApiRequester _requester;

  ScoresResource(commons.ApiRequester client) : _requester = client;

  /// Resets scores for the leaderboard with the given ID for the currently
  /// authenticated player.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreResetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreResetResponse> reset(
    core.String leaderboardId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/scores/reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return PlayerScoreResetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets all scores for all leaderboards for the currently authenticated
  /// players.
  ///
  /// This method is only accessible to whitelisted tester accounts for your
  /// application.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlayerScoreResetAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlayerScoreResetAllResponse> resetAll({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/scores/reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return PlayerScoreResetAllResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets scores for all draft leaderboards for all players.
  ///
  /// This method is only available to user accounts for your developer console.
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
  async.Future<void> resetAllForAllPlayers({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/scores/resetAllForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets scores for the leaderboard with the given ID for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft leaderboards can be reset.
  ///
  /// Request parameters:
  ///
  /// [leaderboardId] - The ID of the leaderboard.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> resetForAllPlayers(
    core.String leaderboardId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'games/v1management/leaderboards/' +
        commons.escapeVariable('$leaderboardId') +
        '/scores/resetForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Resets scores for the leaderboards with the given IDs for all players.
  ///
  /// This method is only available to user accounts for your developer console.
  /// Only draft leaderboards may be reset.
  ///
  /// [request] - The metadata request object.
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
  async.Future<void> resetMultipleForAllPlayers(
    ScoresResetMultipleForAllRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'games/v1management/scores/resetMultipleForAllPlayers';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

/// Achievement reset all response.
class AchievementResetAllResponse {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#achievementResetAllResponse`.
  core.String? kind;

  /// The achievement reset results.
  core.List<AchievementResetResponse>? results;

  AchievementResetAllResponse({
    this.kind,
    this.results,
  });

  AchievementResetAllResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => AchievementResetResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (results != null) 'results': results!,
      };
}

class AchievementResetMultipleForAllRequest {
  /// The IDs of achievements to reset.
  core.List<core.String>? achievementIds;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#achievementResetMultipleForAllRequest`.
  core.String? kind;

  AchievementResetMultipleForAllRequest({
    this.achievementIds,
    this.kind,
  });

  AchievementResetMultipleForAllRequest.fromJson(core.Map json_)
      : this(
          achievementIds: json_.containsKey('achievement_ids')
              ? (json_['achievement_ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (achievementIds != null) 'achievement_ids': achievementIds!,
        if (kind != null) 'kind': kind!,
      };
}

/// An achievement reset response.
class AchievementResetResponse {
  /// The current state of the achievement.
  ///
  /// This is the same as the initial state of the achievement. Possible values
  /// are: - "`HIDDEN`"- Achievement is hidden. - "`REVEALED`" - Achievement is
  /// revealed. - "`UNLOCKED`" - Achievement is unlocked.
  core.String? currentState;

  /// The ID of an achievement for which player state has been updated.
  core.String? definitionId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#achievementResetResponse`.
  core.String? kind;

  /// Flag to indicate if the requested update actually occurred.
  core.bool? updateOccurred;

  AchievementResetResponse({
    this.currentState,
    this.definitionId,
    this.kind,
    this.updateOccurred,
  });

  AchievementResetResponse.fromJson(core.Map json_)
      : this(
          currentState: json_.containsKey('currentState')
              ? json_['currentState'] as core.String
              : null,
          definitionId: json_.containsKey('definitionId')
              ? json_['definitionId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updateOccurred: json_.containsKey('updateOccurred')
              ? json_['updateOccurred'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentState != null) 'currentState': currentState!,
        if (definitionId != null) 'definitionId': definitionId!,
        if (kind != null) 'kind': kind!,
        if (updateOccurred != null) 'updateOccurred': updateOccurred!,
      };
}

/// Multiple events reset all request.
class EventsResetMultipleForAllRequest {
  /// The IDs of events to reset.
  core.List<core.String>? eventIds;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#eventsResetMultipleForAllRequest`.
  core.String? kind;

  EventsResetMultipleForAllRequest({
    this.eventIds,
    this.kind,
  });

  EventsResetMultipleForAllRequest.fromJson(core.Map json_)
      : this(
          eventIds: json_.containsKey('event_ids')
              ? (json_['event_ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventIds != null) 'event_ids': eventIds!,
        if (kind != null) 'kind': kind!,
      };
}

/// 1P/3P metadata about the player's experience.
class GamesPlayerExperienceInfoResource {
  /// The current number of experience points for the player.
  core.String? currentExperiencePoints;

  /// The current level of the player.
  GamesPlayerLevelResource? currentLevel;

  /// The timestamp when the player was leveled up, in millis since Unix epoch
  /// UTC.
  core.String? lastLevelUpTimestampMillis;

  /// The next level of the player.
  ///
  /// If the current level is the maximum level, this should be same as the
  /// current level.
  GamesPlayerLevelResource? nextLevel;

  GamesPlayerExperienceInfoResource({
    this.currentExperiencePoints,
    this.currentLevel,
    this.lastLevelUpTimestampMillis,
    this.nextLevel,
  });

  GamesPlayerExperienceInfoResource.fromJson(core.Map json_)
      : this(
          currentExperiencePoints: json_.containsKey('currentExperiencePoints')
              ? json_['currentExperiencePoints'] as core.String
              : null,
          currentLevel: json_.containsKey('currentLevel')
              ? GamesPlayerLevelResource.fromJson(
                  json_['currentLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          lastLevelUpTimestampMillis:
              json_.containsKey('lastLevelUpTimestampMillis')
                  ? json_['lastLevelUpTimestampMillis'] as core.String
                  : null,
          nextLevel: json_.containsKey('nextLevel')
              ? GamesPlayerLevelResource.fromJson(
                  json_['nextLevel'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentExperiencePoints != null)
          'currentExperiencePoints': currentExperiencePoints!,
        if (currentLevel != null) 'currentLevel': currentLevel!,
        if (lastLevelUpTimestampMillis != null)
          'lastLevelUpTimestampMillis': lastLevelUpTimestampMillis!,
        if (nextLevel != null) 'nextLevel': nextLevel!,
      };
}

/// 1P/3P metadata about a user's level.
class GamesPlayerLevelResource {
  /// The level for the user.
  core.int? level;

  /// The maximum experience points for this level.
  core.String? maxExperiencePoints;

  /// The minimum experience points for this level.
  core.String? minExperiencePoints;

  GamesPlayerLevelResource({
    this.level,
    this.maxExperiencePoints,
    this.minExperiencePoints,
  });

  GamesPlayerLevelResource.fromJson(core.Map json_)
      : this(
          level: json_.containsKey('level') ? json_['level'] as core.int : null,
          maxExperiencePoints: json_.containsKey('maxExperiencePoints')
              ? json_['maxExperiencePoints'] as core.String
              : null,
          minExperiencePoints: json_.containsKey('minExperiencePoints')
              ? json_['minExperiencePoints'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (level != null) 'level': level!,
        if (maxExperiencePoints != null)
          'maxExperiencePoints': maxExperiencePoints!,
        if (minExperiencePoints != null)
          'minExperiencePoints': minExperiencePoints!,
      };
}

/// The HiddenPlayer resource.
class HiddenPlayer {
  /// The time this player was hidden.
  ///
  /// Output only.
  core.String? hiddenTimeMillis;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `gamesManagement#hiddenPlayer`.
  ///
  /// Output only.
  core.String? kind;

  /// The player information.
  ///
  /// Output only.
  Player? player;

  HiddenPlayer({
    this.hiddenTimeMillis,
    this.kind,
    this.player,
  });

  HiddenPlayer.fromJson(core.Map json_)
      : this(
          hiddenTimeMillis: json_.containsKey('hiddenTimeMillis')
              ? json_['hiddenTimeMillis'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          player: json_.containsKey('player')
              ? Player.fromJson(
                  json_['player'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hiddenTimeMillis != null) 'hiddenTimeMillis': hiddenTimeMillis!,
        if (kind != null) 'kind': kind!,
        if (player != null) 'player': player!,
      };
}

/// A list of hidden players.
class HiddenPlayerList {
  /// The players.
  core.List<HiddenPlayer>? items;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `gamesManagement#hiddenPlayerList`.
  core.String? kind;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  HiddenPlayerList({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  HiddenPlayerList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => HiddenPlayer.fromJson(
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

/// An object representation of the individual components of the player's name.
///
/// For some players, these fields may not be present.
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
  GamesPlayerExperienceInfoResource? experienceInfo;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `gamesManagement#player`.
  core.String? kind;

  /// An object representation of the individual components of the player's
  /// name.
  ///
  /// For some players, these fields may not be present.
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
              ? GamesPlayerExperienceInfoResource.fromJson(
                  json_['experienceInfo']
                      as core.Map<core.String, core.dynamic>)
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
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (originalPlayerId != null) 'originalPlayerId': originalPlayerId!,
        if (playerId != null) 'playerId': playerId!,
        if (profileSettings != null) 'profileSettings': profileSettings!,
        if (title != null) 'title': title!,
      };
}

/// A list of leaderboard reset resources.
class PlayerScoreResetAllResponse {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#playerScoreResetAllResponse`.
  core.String? kind;

  /// The leaderboard reset results.
  core.List<PlayerScoreResetResponse>? results;

  PlayerScoreResetAllResponse({
    this.kind,
    this.results,
  });

  PlayerScoreResetAllResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => PlayerScoreResetResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (results != null) 'results': results!,
      };
}

/// A list of reset leaderboard entry resources.
class PlayerScoreResetResponse {
  /// The ID of an leaderboard for which player state has been updated.
  core.String? definitionId;

  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#playerScoreResetResponse`.
  core.String? kind;

  /// The time spans of the updated score.
  ///
  /// Possible values are: - "`ALL_TIME`" - The score is an all-time score. -
  /// "`WEEKLY`" - The score is a weekly score. - "`DAILY`" - The score is a
  /// daily score.
  core.List<core.String>? resetScoreTimeSpans;

  PlayerScoreResetResponse({
    this.definitionId,
    this.kind,
    this.resetScoreTimeSpans,
  });

  PlayerScoreResetResponse.fromJson(core.Map json_)
      : this(
          definitionId: json_.containsKey('definitionId')
              ? json_['definitionId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          resetScoreTimeSpans: json_.containsKey('resetScoreTimeSpans')
              ? (json_['resetScoreTimeSpans'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (definitionId != null) 'definitionId': definitionId!,
        if (kind != null) 'kind': kind!,
        if (resetScoreTimeSpans != null)
          'resetScoreTimeSpans': resetScoreTimeSpans!,
      };
}

/// Profile settings
class ProfileSettings {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string `gamesManagement#profileSettings`.
  core.String? kind;
  core.bool? profileVisible;

  ProfileSettings({
    this.kind,
    this.profileVisible,
  });

  ProfileSettings.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          profileVisible: json_.containsKey('profileVisible')
              ? json_['profileVisible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (profileVisible != null) 'profileVisible': profileVisible!,
      };
}

class ScoresResetMultipleForAllRequest {
  /// Uniquely identifies the type of this resource.
  ///
  /// Value is always the fixed string
  /// `gamesManagement#scoresResetMultipleForAllRequest`.
  core.String? kind;

  /// The IDs of leaderboards to reset.
  core.List<core.String>? leaderboardIds;

  ScoresResetMultipleForAllRequest({
    this.kind,
    this.leaderboardIds,
  });

  ScoresResetMultipleForAllRequest.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          leaderboardIds: json_.containsKey('leaderboard_ids')
              ? (json_['leaderboard_ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (leaderboardIds != null) 'leaderboard_ids': leaderboardIds!,
      };
}
