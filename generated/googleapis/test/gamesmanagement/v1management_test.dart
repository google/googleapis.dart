// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/gamesmanagement/v1management.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AchievementResetResponse> buildUnnamed0() => [
      buildAchievementResetResponse(),
      buildAchievementResetResponse(),
    ];

void checkUnnamed0(core.List<api.AchievementResetResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementResetResponse(o[0]);
  checkAchievementResetResponse(o[1]);
}

core.int buildCounterAchievementResetAllResponse = 0;
api.AchievementResetAllResponse buildAchievementResetAllResponse() {
  final o = api.AchievementResetAllResponse();
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    o.kind = 'foo';
    o.results = buildUnnamed0();
  }
  buildCounterAchievementResetAllResponse--;
  return o;
}

void checkAchievementResetAllResponse(api.AchievementResetAllResponse o) {
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.results!);
  }
  buildCounterAchievementResetAllResponse--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAchievementResetMultipleForAllRequest = 0;
api.AchievementResetMultipleForAllRequest
    buildAchievementResetMultipleForAllRequest() {
  final o = api.AchievementResetMultipleForAllRequest();
  buildCounterAchievementResetMultipleForAllRequest++;
  if (buildCounterAchievementResetMultipleForAllRequest < 3) {
    o.achievementIds = buildUnnamed1();
    o.kind = 'foo';
  }
  buildCounterAchievementResetMultipleForAllRequest--;
  return o;
}

void checkAchievementResetMultipleForAllRequest(
    api.AchievementResetMultipleForAllRequest o) {
  buildCounterAchievementResetMultipleForAllRequest++;
  if (buildCounterAchievementResetMultipleForAllRequest < 3) {
    checkUnnamed1(o.achievementIds!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAchievementResetMultipleForAllRequest--;
}

core.int buildCounterAchievementResetResponse = 0;
api.AchievementResetResponse buildAchievementResetResponse() {
  final o = api.AchievementResetResponse();
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    o.currentState = 'foo';
    o.definitionId = 'foo';
    o.kind = 'foo';
    o.updateOccurred = true;
  }
  buildCounterAchievementResetResponse--;
  return o;
}

void checkAchievementResetResponse(api.AchievementResetResponse o) {
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    unittest.expect(
      o.currentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.definitionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.updateOccurred!, unittest.isTrue);
  }
  buildCounterAchievementResetResponse--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterEventsResetMultipleForAllRequest = 0;
api.EventsResetMultipleForAllRequest buildEventsResetMultipleForAllRequest() {
  final o = api.EventsResetMultipleForAllRequest();
  buildCounterEventsResetMultipleForAllRequest++;
  if (buildCounterEventsResetMultipleForAllRequest < 3) {
    o.eventIds = buildUnnamed2();
    o.kind = 'foo';
  }
  buildCounterEventsResetMultipleForAllRequest--;
  return o;
}

void checkEventsResetMultipleForAllRequest(
    api.EventsResetMultipleForAllRequest o) {
  buildCounterEventsResetMultipleForAllRequest++;
  if (buildCounterEventsResetMultipleForAllRequest < 3) {
    checkUnnamed2(o.eventIds!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventsResetMultipleForAllRequest--;
}

core.int buildCounterGamesPlayerExperienceInfoResource = 0;
api.GamesPlayerExperienceInfoResource buildGamesPlayerExperienceInfoResource() {
  final o = api.GamesPlayerExperienceInfoResource();
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    o.currentExperiencePoints = 'foo';
    o.currentLevel = buildGamesPlayerLevelResource();
    o.lastLevelUpTimestampMillis = 'foo';
    o.nextLevel = buildGamesPlayerLevelResource();
  }
  buildCounterGamesPlayerExperienceInfoResource--;
  return o;
}

void checkGamesPlayerExperienceInfoResource(
    api.GamesPlayerExperienceInfoResource o) {
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    unittest.expect(
      o.currentExperiencePoints!,
      unittest.equals('foo'),
    );
    checkGamesPlayerLevelResource(o.currentLevel!);
    unittest.expect(
      o.lastLevelUpTimestampMillis!,
      unittest.equals('foo'),
    );
    checkGamesPlayerLevelResource(o.nextLevel!);
  }
  buildCounterGamesPlayerExperienceInfoResource--;
}

core.int buildCounterGamesPlayerLevelResource = 0;
api.GamesPlayerLevelResource buildGamesPlayerLevelResource() {
  final o = api.GamesPlayerLevelResource();
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    o.level = 42;
    o.maxExperiencePoints = 'foo';
    o.minExperiencePoints = 'foo';
  }
  buildCounterGamesPlayerLevelResource--;
  return o;
}

void checkGamesPlayerLevelResource(api.GamesPlayerLevelResource o) {
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    unittest.expect(
      o.level!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxExperiencePoints!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minExperiencePoints!,
      unittest.equals('foo'),
    );
  }
  buildCounterGamesPlayerLevelResource--;
}

core.int buildCounterHiddenPlayer = 0;
api.HiddenPlayer buildHiddenPlayer() {
  final o = api.HiddenPlayer();
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    o.hiddenTimeMillis = 'foo';
    o.kind = 'foo';
    o.player = buildPlayer();
  }
  buildCounterHiddenPlayer--;
  return o;
}

void checkHiddenPlayer(api.HiddenPlayer o) {
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    unittest.expect(
      o.hiddenTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPlayer(o.player!);
  }
  buildCounterHiddenPlayer--;
}

core.List<api.HiddenPlayer> buildUnnamed3() => [
      buildHiddenPlayer(),
      buildHiddenPlayer(),
    ];

void checkUnnamed3(core.List<api.HiddenPlayer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHiddenPlayer(o[0]);
  checkHiddenPlayer(o[1]);
}

core.int buildCounterHiddenPlayerList = 0;
api.HiddenPlayerList buildHiddenPlayerList() {
  final o = api.HiddenPlayerList();
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    o.items = buildUnnamed3();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterHiddenPlayerList--;
  return o;
}

void checkHiddenPlayerList(api.HiddenPlayerList o) {
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    checkUnnamed3(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterHiddenPlayerList--;
}

core.int buildCounterPlayerName = 0;
api.PlayerName buildPlayerName() {
  final o = api.PlayerName();
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    o.familyName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterPlayerName--;
  return o;
}

void checkPlayerName(api.PlayerName o) {
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerName--;
}

core.int buildCounterPlayer = 0;
api.Player buildPlayer() {
  final o = api.Player();
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    o.avatarImageUrl = 'foo';
    o.bannerUrlLandscape = 'foo';
    o.bannerUrlPortrait = 'foo';
    o.displayName = 'foo';
    o.experienceInfo = buildGamesPlayerExperienceInfoResource();
    o.kind = 'foo';
    o.name = buildPlayerName();
    o.originalPlayerId = 'foo';
    o.playerId = 'foo';
    o.profileSettings = buildProfileSettings();
    o.title = 'foo';
  }
  buildCounterPlayer--;
  return o;
}

void checkPlayer(api.Player o) {
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    unittest.expect(
      o.avatarImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerUrlLandscape!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bannerUrlPortrait!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGamesPlayerExperienceInfoResource(o.experienceInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPlayerName(o.name!);
    unittest.expect(
      o.originalPlayerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playerId!,
      unittest.equals('foo'),
    );
    checkProfileSettings(o.profileSettings!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayer--;
}

core.List<api.PlayerScoreResetResponse> buildUnnamed4() => [
      buildPlayerScoreResetResponse(),
      buildPlayerScoreResetResponse(),
    ];

void checkUnnamed4(core.List<api.PlayerScoreResetResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScoreResetResponse(o[0]);
  checkPlayerScoreResetResponse(o[1]);
}

core.int buildCounterPlayerScoreResetAllResponse = 0;
api.PlayerScoreResetAllResponse buildPlayerScoreResetAllResponse() {
  final o = api.PlayerScoreResetAllResponse();
  buildCounterPlayerScoreResetAllResponse++;
  if (buildCounterPlayerScoreResetAllResponse < 3) {
    o.kind = 'foo';
    o.results = buildUnnamed4();
  }
  buildCounterPlayerScoreResetAllResponse--;
  return o;
}

void checkPlayerScoreResetAllResponse(api.PlayerScoreResetAllResponse o) {
  buildCounterPlayerScoreResetAllResponse++;
  if (buildCounterPlayerScoreResetAllResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.results!);
  }
  buildCounterPlayerScoreResetAllResponse--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterPlayerScoreResetResponse = 0;
api.PlayerScoreResetResponse buildPlayerScoreResetResponse() {
  final o = api.PlayerScoreResetResponse();
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    o.definitionId = 'foo';
    o.kind = 'foo';
    o.resetScoreTimeSpans = buildUnnamed5();
  }
  buildCounterPlayerScoreResetResponse--;
  return o;
}

void checkPlayerScoreResetResponse(api.PlayerScoreResetResponse o) {
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    unittest.expect(
      o.definitionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.resetScoreTimeSpans!);
  }
  buildCounterPlayerScoreResetResponse--;
}

core.int buildCounterProfileSettings = 0;
api.ProfileSettings buildProfileSettings() {
  final o = api.ProfileSettings();
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    o.kind = 'foo';
    o.profileVisible = true;
  }
  buildCounterProfileSettings--;
  return o;
}

void checkProfileSettings(api.ProfileSettings o) {
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.profileVisible!, unittest.isTrue);
  }
  buildCounterProfileSettings--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterScoresResetMultipleForAllRequest = 0;
api.ScoresResetMultipleForAllRequest buildScoresResetMultipleForAllRequest() {
  final o = api.ScoresResetMultipleForAllRequest();
  buildCounterScoresResetMultipleForAllRequest++;
  if (buildCounterScoresResetMultipleForAllRequest < 3) {
    o.kind = 'foo';
    o.leaderboardIds = buildUnnamed6();
  }
  buildCounterScoresResetMultipleForAllRequest--;
  return o;
}

void checkScoresResetMultipleForAllRequest(
    api.ScoresResetMultipleForAllRequest o) {
  buildCounterScoresResetMultipleForAllRequest++;
  if (buildCounterScoresResetMultipleForAllRequest < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.leaderboardIds!);
  }
  buildCounterScoresResetMultipleForAllRequest--;
}

void main() {
  unittest.group('obj-schema-AchievementResetAllResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementResetAllResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementResetAllResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementResetAllResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementResetMultipleForAllRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementResetMultipleForAllRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementResetMultipleForAllRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementResetMultipleForAllRequest(od);
    });
  });

  unittest.group('obj-schema-AchievementResetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementResetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementResetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementResetResponse(od);
    });
  });

  unittest.group('obj-schema-EventsResetMultipleForAllRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventsResetMultipleForAllRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventsResetMultipleForAllRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventsResetMultipleForAllRequest(od);
    });
  });

  unittest.group('obj-schema-GamesPlayerExperienceInfoResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGamesPlayerExperienceInfoResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GamesPlayerExperienceInfoResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGamesPlayerExperienceInfoResource(od);
    });
  });

  unittest.group('obj-schema-GamesPlayerLevelResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGamesPlayerLevelResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GamesPlayerLevelResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGamesPlayerLevelResource(od);
    });
  });

  unittest.group('obj-schema-HiddenPlayer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHiddenPlayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HiddenPlayer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHiddenPlayer(od);
    });
  });

  unittest.group('obj-schema-HiddenPlayerList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHiddenPlayerList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HiddenPlayerList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHiddenPlayerList(od);
    });
  });

  unittest.group('obj-schema-PlayerName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PlayerName.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlayerName(od);
    });
  });

  unittest.group('obj-schema-Player', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Player.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlayer(od);
    });
  });

  unittest.group('obj-schema-PlayerScoreResetAllResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScoreResetAllResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScoreResetAllResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScoreResetAllResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerScoreResetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScoreResetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScoreResetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScoreResetResponse(od);
    });
  });

  unittest.group('obj-schema-ProfileSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfileSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProfileSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProfileSettings(od);
    });
  });

  unittest.group('obj-schema-ScoresResetMultipleForAllRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScoresResetMultipleForAllRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScoresResetMultipleForAllRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScoresResetMultipleForAllRequest(od);
    });
  });

  unittest.group('resource-AchievementsResource', () {
    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).achievements;
      final arg_achievementId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/achievements/'),
        );
        pathOffset += 32;
        index = path.indexOf('/reset', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/reset'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAchievementResetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reset(arg_achievementId, $fields: arg_$fields);
      checkAchievementResetResponse(response as api.AchievementResetResponse);
    });

    unittest.test('method--resetAll', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).achievements;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 37),
          unittest.equals('games/v1management/achievements/reset'),
        );
        pathOffset += 37;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAchievementResetAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetAll($fields: arg_$fields);
      checkAchievementResetAllResponse(
          response as api.AchievementResetAllResponse);
    });

    unittest.test('method--resetAllForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).achievements;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 53),
          unittest
              .equals('games/v1management/achievements/resetAllForAllPlayers'),
        );
        pathOffset += 53;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetAllForAllPlayers($fields: arg_$fields);
    });

    unittest.test('method--resetForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).achievements;
      final arg_achievementId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/achievements/'),
        );
        pathOffset += 32;
        index = path.indexOf('/resetForAllPlayers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/resetForAllPlayers'),
        );
        pathOffset += 19;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetForAllPlayers(arg_achievementId, $fields: arg_$fields);
    });

    unittest.test('method--resetMultipleForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).achievements;
      final arg_request = buildAchievementResetMultipleForAllRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AchievementResetMultipleForAllRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAchievementResetMultipleForAllRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 58),
          unittest.equals(
              'games/v1management/achievements/resetMultipleForAllPlayers'),
        );
        pathOffset += 58;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetMultipleForAllPlayers(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-ApplicationsResource', () {
    unittest.test('method--listHidden', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).applications;
      final arg_applicationId = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/applications/'),
        );
        pathOffset += 32;
        index = path.indexOf('/players/hidden', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/players/hidden'),
        );
        pathOffset += 15;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHiddenPlayerList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listHidden(arg_applicationId,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkHiddenPlayerList(response as api.HiddenPlayerList);
    });
  });

  unittest.group('resource-EventsResource', () {
    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).events;
      final arg_eventId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('games/v1management/events/'),
        );
        pathOffset += 26;
        index = path.indexOf('/reset', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_eventId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/reset'),
        );
        pathOffset += 6;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.reset(arg_eventId, $fields: arg_$fields);
    });

    unittest.test('method--resetAll', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).events;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('games/v1management/events/reset'),
        );
        pathOffset += 31;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetAll($fields: arg_$fields);
    });

    unittest.test('method--resetAllForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).events;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 47),
          unittest.equals('games/v1management/events/resetAllForAllPlayers'),
        );
        pathOffset += 47;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetAllForAllPlayers($fields: arg_$fields);
    });

    unittest.test('method--resetForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).events;
      final arg_eventId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('games/v1management/events/'),
        );
        pathOffset += 26;
        index = path.indexOf('/resetForAllPlayers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_eventId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/resetForAllPlayers'),
        );
        pathOffset += 19;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetForAllPlayers(arg_eventId, $fields: arg_$fields);
    });

    unittest.test('method--resetMultipleForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).events;
      final arg_request = buildEventsResetMultipleForAllRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EventsResetMultipleForAllRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEventsResetMultipleForAllRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('games/v1management/events/resetMultipleForAllPlayers'),
        );
        pathOffset += 52;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetMultipleForAllPlayers(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-PlayersResource', () {
    unittest.test('method--hide', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).players;
      final arg_applicationId = 'foo';
      final arg_playerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/applications/'),
        );
        pathOffset += 32;
        index = path.indexOf('/players/hidden/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/players/hidden/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.hide(arg_applicationId, arg_playerId, $fields: arg_$fields);
    });

    unittest.test('method--unhide', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).players;
      final arg_applicationId = 'foo';
      final arg_playerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/applications/'),
        );
        pathOffset += 32;
        index = path.indexOf('/players/hidden/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/players/hidden/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.unhide(arg_applicationId, arg_playerId, $fields: arg_$fields);
    });
  });

  unittest.group('resource-ScoresResource', () {
    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).scores;
      final arg_leaderboardId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/leaderboards/'),
        );
        pathOffset += 32;
        index = path.indexOf('/scores/reset', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/scores/reset'),
        );
        pathOffset += 13;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayerScoreResetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reset(arg_leaderboardId, $fields: arg_$fields);
      checkPlayerScoreResetResponse(response as api.PlayerScoreResetResponse);
    });

    unittest.test('method--resetAll', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).scores;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('games/v1management/scores/reset'),
        );
        pathOffset += 31;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayerScoreResetAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetAll($fields: arg_$fields);
      checkPlayerScoreResetAllResponse(
          response as api.PlayerScoreResetAllResponse);
    });

    unittest.test('method--resetAllForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).scores;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 47),
          unittest.equals('games/v1management/scores/resetAllForAllPlayers'),
        );
        pathOffset += 47;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetAllForAllPlayers($fields: arg_$fields);
    });

    unittest.test('method--resetForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).scores;
      final arg_leaderboardId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('games/v1management/leaderboards/'),
        );
        pathOffset += 32;
        index = path.indexOf('/scores/resetForAllPlayers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/scores/resetForAllPlayers'),
        );
        pathOffset += 26;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetForAllPlayers(arg_leaderboardId, $fields: arg_$fields);
    });

    unittest.test('method--resetMultipleForAllPlayers', () async {
      final mock = HttpServerMock();
      final res = api.GamesManagementApi(mock).scores;
      final arg_request = buildScoresResetMultipleForAllRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScoresResetMultipleForAllRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScoresResetMultipleForAllRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('games/v1management/scores/resetMultipleForAllPlayers'),
        );
        pathOffset += 52;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resetMultipleForAllPlayers(arg_request, $fields: arg_$fields);
    });
  });
}
