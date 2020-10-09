library googleapis.gamesManagement.v1management.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/gamesmanagement/v1management.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed5713() {
  var o = new core.List<api.AchievementResetResponse>();
  o.add(buildAchievementResetResponse());
  o.add(buildAchievementResetResponse());
  return o;
}

checkUnnamed5713(core.List<api.AchievementResetResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementResetResponse(o[0]);
  checkAchievementResetResponse(o[1]);
}

core.int buildCounterAchievementResetAllResponse = 0;
buildAchievementResetAllResponse() {
  var o = new api.AchievementResetAllResponse();
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    o.kind = "foo";
    o.results = buildUnnamed5713();
  }
  buildCounterAchievementResetAllResponse--;
  return o;
}

checkAchievementResetAllResponse(api.AchievementResetAllResponse o) {
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed5713(o.results);
  }
  buildCounterAchievementResetAllResponse--;
}

buildUnnamed5714() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5714(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAchievementResetMultipleForAllRequest = 0;
buildAchievementResetMultipleForAllRequest() {
  var o = new api.AchievementResetMultipleForAllRequest();
  buildCounterAchievementResetMultipleForAllRequest++;
  if (buildCounterAchievementResetMultipleForAllRequest < 3) {
    o.achievementIds = buildUnnamed5714();
    o.kind = "foo";
  }
  buildCounterAchievementResetMultipleForAllRequest--;
  return o;
}

checkAchievementResetMultipleForAllRequest(
    api.AchievementResetMultipleForAllRequest o) {
  buildCounterAchievementResetMultipleForAllRequest++;
  if (buildCounterAchievementResetMultipleForAllRequest < 3) {
    checkUnnamed5714(o.achievementIds);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAchievementResetMultipleForAllRequest--;
}

core.int buildCounterAchievementResetResponse = 0;
buildAchievementResetResponse() {
  var o = new api.AchievementResetResponse();
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    o.currentState = "foo";
    o.definitionId = "foo";
    o.kind = "foo";
    o.updateOccurred = true;
  }
  buildCounterAchievementResetResponse--;
  return o;
}

checkAchievementResetResponse(api.AchievementResetResponse o) {
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.definitionId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.updateOccurred, unittest.isTrue);
  }
  buildCounterAchievementResetResponse--;
}

buildUnnamed5715() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5715(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEventsResetMultipleForAllRequest = 0;
buildEventsResetMultipleForAllRequest() {
  var o = new api.EventsResetMultipleForAllRequest();
  buildCounterEventsResetMultipleForAllRequest++;
  if (buildCounterEventsResetMultipleForAllRequest < 3) {
    o.eventIds = buildUnnamed5715();
    o.kind = "foo";
  }
  buildCounterEventsResetMultipleForAllRequest--;
  return o;
}

checkEventsResetMultipleForAllRequest(api.EventsResetMultipleForAllRequest o) {
  buildCounterEventsResetMultipleForAllRequest++;
  if (buildCounterEventsResetMultipleForAllRequest < 3) {
    checkUnnamed5715(o.eventIds);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEventsResetMultipleForAllRequest--;
}

core.int buildCounterGamesPlayerExperienceInfoResource = 0;
buildGamesPlayerExperienceInfoResource() {
  var o = new api.GamesPlayerExperienceInfoResource();
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    o.currentExperiencePoints = "foo";
    o.currentLevel = buildGamesPlayerLevelResource();
    o.lastLevelUpTimestampMillis = "foo";
    o.nextLevel = buildGamesPlayerLevelResource();
  }
  buildCounterGamesPlayerExperienceInfoResource--;
  return o;
}

checkGamesPlayerExperienceInfoResource(
    api.GamesPlayerExperienceInfoResource o) {
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    unittest.expect(o.currentExperiencePoints, unittest.equals('foo'));
    checkGamesPlayerLevelResource(o.currentLevel);
    unittest.expect(o.lastLevelUpTimestampMillis, unittest.equals('foo'));
    checkGamesPlayerLevelResource(o.nextLevel);
  }
  buildCounterGamesPlayerExperienceInfoResource--;
}

core.int buildCounterGamesPlayerLevelResource = 0;
buildGamesPlayerLevelResource() {
  var o = new api.GamesPlayerLevelResource();
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    o.level = 42;
    o.maxExperiencePoints = "foo";
    o.minExperiencePoints = "foo";
  }
  buildCounterGamesPlayerLevelResource--;
  return o;
}

checkGamesPlayerLevelResource(api.GamesPlayerLevelResource o) {
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    unittest.expect(o.level, unittest.equals(42));
    unittest.expect(o.maxExperiencePoints, unittest.equals('foo'));
    unittest.expect(o.minExperiencePoints, unittest.equals('foo'));
  }
  buildCounterGamesPlayerLevelResource--;
}

core.int buildCounterHiddenPlayer = 0;
buildHiddenPlayer() {
  var o = new api.HiddenPlayer();
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    o.hiddenTimeMillis = "foo";
    o.kind = "foo";
    o.player = buildPlayer();
  }
  buildCounterHiddenPlayer--;
  return o;
}

checkHiddenPlayer(api.HiddenPlayer o) {
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    unittest.expect(o.hiddenTimeMillis, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlayer(o.player);
  }
  buildCounterHiddenPlayer--;
}

buildUnnamed5716() {
  var o = new core.List<api.HiddenPlayer>();
  o.add(buildHiddenPlayer());
  o.add(buildHiddenPlayer());
  return o;
}

checkUnnamed5716(core.List<api.HiddenPlayer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHiddenPlayer(o[0]);
  checkHiddenPlayer(o[1]);
}

core.int buildCounterHiddenPlayerList = 0;
buildHiddenPlayerList() {
  var o = new api.HiddenPlayerList();
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    o.items = buildUnnamed5716();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterHiddenPlayerList--;
  return o;
}

checkHiddenPlayerList(api.HiddenPlayerList o) {
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    checkUnnamed5716(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterHiddenPlayerList--;
}

core.int buildCounterPlayerName = 0;
buildPlayerName() {
  var o = new api.PlayerName();
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    o.familyName = "foo";
    o.givenName = "foo";
  }
  buildCounterPlayerName--;
  return o;
}

checkPlayerName(api.PlayerName o) {
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterPlayerName--;
}

core.int buildCounterPlayer = 0;
buildPlayer() {
  var o = new api.Player();
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    o.avatarImageUrl = "foo";
    o.bannerUrlLandscape = "foo";
    o.bannerUrlPortrait = "foo";
    o.displayName = "foo";
    o.experienceInfo = buildGamesPlayerExperienceInfoResource();
    o.kind = "foo";
    o.name = buildPlayerName();
    o.originalPlayerId = "foo";
    o.playerId = "foo";
    o.profileSettings = buildProfileSettings();
    o.title = "foo";
  }
  buildCounterPlayer--;
  return o;
}

checkPlayer(api.Player o) {
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    unittest.expect(o.avatarImageUrl, unittest.equals('foo'));
    unittest.expect(o.bannerUrlLandscape, unittest.equals('foo'));
    unittest.expect(o.bannerUrlPortrait, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGamesPlayerExperienceInfoResource(o.experienceInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlayerName(o.name);
    unittest.expect(o.originalPlayerId, unittest.equals('foo'));
    unittest.expect(o.playerId, unittest.equals('foo'));
    checkProfileSettings(o.profileSettings);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlayer--;
}

buildUnnamed5717() {
  var o = new core.List<api.PlayerScoreResetResponse>();
  o.add(buildPlayerScoreResetResponse());
  o.add(buildPlayerScoreResetResponse());
  return o;
}

checkUnnamed5717(core.List<api.PlayerScoreResetResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScoreResetResponse(o[0]);
  checkPlayerScoreResetResponse(o[1]);
}

core.int buildCounterPlayerScoreResetAllResponse = 0;
buildPlayerScoreResetAllResponse() {
  var o = new api.PlayerScoreResetAllResponse();
  buildCounterPlayerScoreResetAllResponse++;
  if (buildCounterPlayerScoreResetAllResponse < 3) {
    o.kind = "foo";
    o.results = buildUnnamed5717();
  }
  buildCounterPlayerScoreResetAllResponse--;
  return o;
}

checkPlayerScoreResetAllResponse(api.PlayerScoreResetAllResponse o) {
  buildCounterPlayerScoreResetAllResponse++;
  if (buildCounterPlayerScoreResetAllResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed5717(o.results);
  }
  buildCounterPlayerScoreResetAllResponse--;
}

buildUnnamed5718() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5718(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlayerScoreResetResponse = 0;
buildPlayerScoreResetResponse() {
  var o = new api.PlayerScoreResetResponse();
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    o.definitionId = "foo";
    o.kind = "foo";
    o.resetScoreTimeSpans = buildUnnamed5718();
  }
  buildCounterPlayerScoreResetResponse--;
  return o;
}

checkPlayerScoreResetResponse(api.PlayerScoreResetResponse o) {
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    unittest.expect(o.definitionId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed5718(o.resetScoreTimeSpans);
  }
  buildCounterPlayerScoreResetResponse--;
}

core.int buildCounterProfileSettings = 0;
buildProfileSettings() {
  var o = new api.ProfileSettings();
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    o.kind = "foo";
    o.profileVisible = true;
  }
  buildCounterProfileSettings--;
  return o;
}

checkProfileSettings(api.ProfileSettings o) {
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.profileVisible, unittest.isTrue);
  }
  buildCounterProfileSettings--;
}

buildUnnamed5719() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5719(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterScoresResetMultipleForAllRequest = 0;
buildScoresResetMultipleForAllRequest() {
  var o = new api.ScoresResetMultipleForAllRequest();
  buildCounterScoresResetMultipleForAllRequest++;
  if (buildCounterScoresResetMultipleForAllRequest < 3) {
    o.kind = "foo";
    o.leaderboardIds = buildUnnamed5719();
  }
  buildCounterScoresResetMultipleForAllRequest--;
  return o;
}

checkScoresResetMultipleForAllRequest(api.ScoresResetMultipleForAllRequest o) {
  buildCounterScoresResetMultipleForAllRequest++;
  if (buildCounterScoresResetMultipleForAllRequest < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed5719(o.leaderboardIds);
  }
  buildCounterScoresResetMultipleForAllRequest--;
}

main() {
  unittest.group("obj-schema-AchievementResetAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementResetAllResponse();
      var od = new api.AchievementResetAllResponse.fromJson(o.toJson());
      checkAchievementResetAllResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementResetMultipleForAllRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementResetMultipleForAllRequest();
      var od =
          new api.AchievementResetMultipleForAllRequest.fromJson(o.toJson());
      checkAchievementResetMultipleForAllRequest(od);
    });
  });

  unittest.group("obj-schema-AchievementResetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementResetResponse();
      var od = new api.AchievementResetResponse.fromJson(o.toJson());
      checkAchievementResetResponse(od);
    });
  });

  unittest.group("obj-schema-EventsResetMultipleForAllRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventsResetMultipleForAllRequest();
      var od = new api.EventsResetMultipleForAllRequest.fromJson(o.toJson());
      checkEventsResetMultipleForAllRequest(od);
    });
  });

  unittest.group("obj-schema-GamesPlayerExperienceInfoResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesPlayerExperienceInfoResource();
      var od = new api.GamesPlayerExperienceInfoResource.fromJson(o.toJson());
      checkGamesPlayerExperienceInfoResource(od);
    });
  });

  unittest.group("obj-schema-GamesPlayerLevelResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesPlayerLevelResource();
      var od = new api.GamesPlayerLevelResource.fromJson(o.toJson());
      checkGamesPlayerLevelResource(od);
    });
  });

  unittest.group("obj-schema-HiddenPlayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiddenPlayer();
      var od = new api.HiddenPlayer.fromJson(o.toJson());
      checkHiddenPlayer(od);
    });
  });

  unittest.group("obj-schema-HiddenPlayerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiddenPlayerList();
      var od = new api.HiddenPlayerList.fromJson(o.toJson());
      checkHiddenPlayerList(od);
    });
  });

  unittest.group("obj-schema-PlayerName", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerName();
      var od = new api.PlayerName.fromJson(o.toJson());
      checkPlayerName(od);
    });
  });

  unittest.group("obj-schema-Player", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayer();
      var od = new api.Player.fromJson(o.toJson());
      checkPlayer(od);
    });
  });

  unittest.group("obj-schema-PlayerScoreResetAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreResetAllResponse();
      var od = new api.PlayerScoreResetAllResponse.fromJson(o.toJson());
      checkPlayerScoreResetAllResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerScoreResetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreResetResponse();
      var od = new api.PlayerScoreResetResponse.fromJson(o.toJson());
      checkPlayerScoreResetResponse(od);
    });
  });

  unittest.group("obj-schema-ProfileSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildProfileSettings();
      var od = new api.ProfileSettings.fromJson(o.toJson());
      checkProfileSettings(od);
    });
  });

  unittest.group("obj-schema-ScoresResetMultipleForAllRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildScoresResetMultipleForAllRequest();
      var od = new api.ScoresResetMultipleForAllRequest.fromJson(o.toJson());
      checkScoresResetMultipleForAllRequest(od);
    });
  });

  unittest.group("resource-AchievementsResourceApi", () {
    unittest.test("method--reset", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res =
          new api.GamesManagementApi(mock).achievements;
      var arg_achievementId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/achievements/"));
        pathOffset += 32;
        index = path.indexOf("/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/reset"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAchievementResetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reset(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementResetResponse(response);
      })));
    });

    unittest.test("method--resetAll", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res =
          new api.GamesManagementApi(mock).achievements;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 37),
            unittest.equals("games/v1management/achievements/reset"));
        pathOffset += 37;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAchievementResetAllResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAll($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementResetAllResponse(response);
      })));
    });

    unittest.test("method--resetAllForAllPlayers", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res =
          new api.GamesManagementApi(mock).achievements;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 53),
            unittest.equals(
                "games/v1management/achievements/resetAllForAllPlayers"));
        pathOffset += 53;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAllForAllPlayers($fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetForAllPlayers", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res =
          new api.GamesManagementApi(mock).achievements;
      var arg_achievementId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/achievements/"));
        pathOffset += 32;
        index = path.indexOf("/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/resetForAllPlayers"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetForAllPlayers(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetMultipleForAllPlayers", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res =
          new api.GamesManagementApi(mock).achievements;
      var arg_request = buildAchievementResetMultipleForAllRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AchievementResetMultipleForAllRequest.fromJson(json);
        checkAchievementResetMultipleForAllRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 58),
            unittest.equals(
                "games/v1management/achievements/resetMultipleForAllPlayers"));
        pathOffset += 58;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetMultipleForAllPlayers(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ApplicationsResourceApi", () {
    unittest.test("method--listHidden", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res =
          new api.GamesManagementApi(mock).applications;
      var arg_applicationId = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/applications/"));
        pathOffset += 32;
        index = path.indexOf("/players/hidden", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/players/hidden"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHiddenPlayerList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listHidden(arg_applicationId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHiddenPlayerList(response);
      })));
    });
  });

  unittest.group("resource-EventsResourceApi", () {
    unittest.test("method--reset", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_eventId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("games/v1management/events/"));
        pathOffset += 26;
        index = path.indexOf("/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_eventId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/reset"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reset(arg_eventId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetAll", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("games/v1management/events/reset"));
        pathOffset += 31;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.resetAll($fields: arg_$fields).then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetAllForAllPlayers", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 47),
            unittest.equals("games/v1management/events/resetAllForAllPlayers"));
        pathOffset += 47;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAllForAllPlayers($fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetForAllPlayers", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_eventId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("games/v1management/events/"));
        pathOffset += 26;
        index = path.indexOf("/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_eventId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/resetForAllPlayers"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetForAllPlayers(arg_eventId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetMultipleForAllPlayers", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_request = buildEventsResetMultipleForAllRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EventsResetMultipleForAllRequest.fromJson(json);
        checkEventsResetMultipleForAllRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 52),
            unittest.equals(
                "games/v1management/events/resetMultipleForAllPlayers"));
        pathOffset += 52;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetMultipleForAllPlayers(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-PlayersResourceApi", () {
    unittest.test("method--hide", () {
      var mock = new HttpServerMock();
      api.PlayersResourceApi res = new api.GamesManagementApi(mock).players;
      var arg_applicationId = "foo";
      var arg_playerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/applications/"));
        pathOffset += 32;
        index = path.indexOf("/players/hidden/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/players/hidden/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hide(arg_applicationId, arg_playerId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--unhide", () {
      var mock = new HttpServerMock();
      api.PlayersResourceApi res = new api.GamesManagementApi(mock).players;
      var arg_applicationId = "foo";
      var arg_playerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/applications/"));
        pathOffset += 32;
        index = path.indexOf("/players/hidden/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/players/hidden/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unhide(arg_applicationId, arg_playerId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ScoresResourceApi", () {
    unittest.test("method--reset", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_leaderboardId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/leaderboards/"));
        pathOffset += 32;
        index = path.indexOf("/scores/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/scores/reset"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerScoreResetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reset(arg_leaderboardId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerScoreResetResponse(response);
      })));
    });

    unittest.test("method--resetAll", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("games/v1management/scores/reset"));
        pathOffset += 31;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerScoreResetAllResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAll($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerScoreResetAllResponse(response);
      })));
    });

    unittest.test("method--resetAllForAllPlayers", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 47),
            unittest.equals("games/v1management/scores/resetAllForAllPlayers"));
        pathOffset += 47;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAllForAllPlayers($fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetForAllPlayers", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_leaderboardId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("games/v1management/leaderboards/"));
        pathOffset += 32;
        index = path.indexOf("/scores/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/scores/resetForAllPlayers"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetForAllPlayers(arg_leaderboardId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--resetMultipleForAllPlayers", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_request = buildScoresResetMultipleForAllRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ScoresResetMultipleForAllRequest.fromJson(json);
        checkScoresResetMultipleForAllRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 52),
            unittest.equals(
                "games/v1management/scores/resetMultipleForAllPlayers"));
        pathOffset += 52;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetMultipleForAllPlayers(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });
}
