library googleapis.games.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/games/v1.dart' as api;

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

core.int buildCounterAchievementDefinition = 0;
buildAchievementDefinition() {
  var o = new api.AchievementDefinition();
  buildCounterAchievementDefinition++;
  if (buildCounterAchievementDefinition < 3) {
    o.achievementType = "foo";
    o.description = "foo";
    o.experiencePoints = "foo";
    o.formattedTotalSteps = "foo";
    o.id = "foo";
    o.initialState = "foo";
    o.isRevealedIconUrlDefault = true;
    o.isUnlockedIconUrlDefault = true;
    o.kind = "foo";
    o.name = "foo";
    o.revealedIconUrl = "foo";
    o.totalSteps = 42;
    o.unlockedIconUrl = "foo";
  }
  buildCounterAchievementDefinition--;
  return o;
}

checkAchievementDefinition(api.AchievementDefinition o) {
  buildCounterAchievementDefinition++;
  if (buildCounterAchievementDefinition < 3) {
    unittest.expect(o.achievementType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.experiencePoints, unittest.equals('foo'));
    unittest.expect(o.formattedTotalSteps, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialState, unittest.equals('foo'));
    unittest.expect(o.isRevealedIconUrlDefault, unittest.isTrue);
    unittest.expect(o.isUnlockedIconUrlDefault, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.revealedIconUrl, unittest.equals('foo'));
    unittest.expect(o.totalSteps, unittest.equals(42));
    unittest.expect(o.unlockedIconUrl, unittest.equals('foo'));
  }
  buildCounterAchievementDefinition--;
}

buildUnnamed3721() {
  var o = new core.List<api.AchievementDefinition>();
  o.add(buildAchievementDefinition());
  o.add(buildAchievementDefinition());
  return o;
}

checkUnnamed3721(core.List<api.AchievementDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementDefinition(o[0]);
  checkAchievementDefinition(o[1]);
}

core.int buildCounterAchievementDefinitionsListResponse = 0;
buildAchievementDefinitionsListResponse() {
  var o = new api.AchievementDefinitionsListResponse();
  buildCounterAchievementDefinitionsListResponse++;
  if (buildCounterAchievementDefinitionsListResponse < 3) {
    o.items = buildUnnamed3721();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterAchievementDefinitionsListResponse--;
  return o;
}

checkAchievementDefinitionsListResponse(
    api.AchievementDefinitionsListResponse o) {
  buildCounterAchievementDefinitionsListResponse++;
  if (buildCounterAchievementDefinitionsListResponse < 3) {
    checkUnnamed3721(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAchievementDefinitionsListResponse--;
}

core.int buildCounterAchievementIncrementResponse = 0;
buildAchievementIncrementResponse() {
  var o = new api.AchievementIncrementResponse();
  buildCounterAchievementIncrementResponse++;
  if (buildCounterAchievementIncrementResponse < 3) {
    o.currentSteps = 42;
    o.kind = "foo";
    o.newlyUnlocked = true;
  }
  buildCounterAchievementIncrementResponse--;
  return o;
}

checkAchievementIncrementResponse(api.AchievementIncrementResponse o) {
  buildCounterAchievementIncrementResponse++;
  if (buildCounterAchievementIncrementResponse < 3) {
    unittest.expect(o.currentSteps, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newlyUnlocked, unittest.isTrue);
  }
  buildCounterAchievementIncrementResponse--;
}

core.int buildCounterAchievementRevealResponse = 0;
buildAchievementRevealResponse() {
  var o = new api.AchievementRevealResponse();
  buildCounterAchievementRevealResponse++;
  if (buildCounterAchievementRevealResponse < 3) {
    o.currentState = "foo";
    o.kind = "foo";
  }
  buildCounterAchievementRevealResponse--;
  return o;
}

checkAchievementRevealResponse(api.AchievementRevealResponse o) {
  buildCounterAchievementRevealResponse++;
  if (buildCounterAchievementRevealResponse < 3) {
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAchievementRevealResponse--;
}

core.int buildCounterAchievementSetStepsAtLeastResponse = 0;
buildAchievementSetStepsAtLeastResponse() {
  var o = new api.AchievementSetStepsAtLeastResponse();
  buildCounterAchievementSetStepsAtLeastResponse++;
  if (buildCounterAchievementSetStepsAtLeastResponse < 3) {
    o.currentSteps = 42;
    o.kind = "foo";
    o.newlyUnlocked = true;
  }
  buildCounterAchievementSetStepsAtLeastResponse--;
  return o;
}

checkAchievementSetStepsAtLeastResponse(
    api.AchievementSetStepsAtLeastResponse o) {
  buildCounterAchievementSetStepsAtLeastResponse++;
  if (buildCounterAchievementSetStepsAtLeastResponse < 3) {
    unittest.expect(o.currentSteps, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newlyUnlocked, unittest.isTrue);
  }
  buildCounterAchievementSetStepsAtLeastResponse--;
}

core.int buildCounterAchievementUnlockResponse = 0;
buildAchievementUnlockResponse() {
  var o = new api.AchievementUnlockResponse();
  buildCounterAchievementUnlockResponse++;
  if (buildCounterAchievementUnlockResponse < 3) {
    o.kind = "foo";
    o.newlyUnlocked = true;
  }
  buildCounterAchievementUnlockResponse--;
  return o;
}

checkAchievementUnlockResponse(api.AchievementUnlockResponse o) {
  buildCounterAchievementUnlockResponse++;
  if (buildCounterAchievementUnlockResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newlyUnlocked, unittest.isTrue);
  }
  buildCounterAchievementUnlockResponse--;
}

buildUnnamed3722() {
  var o = new core.List<api.AchievementUpdateRequest>();
  o.add(buildAchievementUpdateRequest());
  o.add(buildAchievementUpdateRequest());
  return o;
}

checkUnnamed3722(core.List<api.AchievementUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementUpdateRequest(o[0]);
  checkAchievementUpdateRequest(o[1]);
}

core.int buildCounterAchievementUpdateMultipleRequest = 0;
buildAchievementUpdateMultipleRequest() {
  var o = new api.AchievementUpdateMultipleRequest();
  buildCounterAchievementUpdateMultipleRequest++;
  if (buildCounterAchievementUpdateMultipleRequest < 3) {
    o.kind = "foo";
    o.updates = buildUnnamed3722();
  }
  buildCounterAchievementUpdateMultipleRequest--;
  return o;
}

checkAchievementUpdateMultipleRequest(api.AchievementUpdateMultipleRequest o) {
  buildCounterAchievementUpdateMultipleRequest++;
  if (buildCounterAchievementUpdateMultipleRequest < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3722(o.updates);
  }
  buildCounterAchievementUpdateMultipleRequest--;
}

buildUnnamed3723() {
  var o = new core.List<api.AchievementUpdateResponse>();
  o.add(buildAchievementUpdateResponse());
  o.add(buildAchievementUpdateResponse());
  return o;
}

checkUnnamed3723(core.List<api.AchievementUpdateResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementUpdateResponse(o[0]);
  checkAchievementUpdateResponse(o[1]);
}

core.int buildCounterAchievementUpdateMultipleResponse = 0;
buildAchievementUpdateMultipleResponse() {
  var o = new api.AchievementUpdateMultipleResponse();
  buildCounterAchievementUpdateMultipleResponse++;
  if (buildCounterAchievementUpdateMultipleResponse < 3) {
    o.kind = "foo";
    o.updatedAchievements = buildUnnamed3723();
  }
  buildCounterAchievementUpdateMultipleResponse--;
  return o;
}

checkAchievementUpdateMultipleResponse(
    api.AchievementUpdateMultipleResponse o) {
  buildCounterAchievementUpdateMultipleResponse++;
  if (buildCounterAchievementUpdateMultipleResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3723(o.updatedAchievements);
  }
  buildCounterAchievementUpdateMultipleResponse--;
}

core.int buildCounterAchievementUpdateRequest = 0;
buildAchievementUpdateRequest() {
  var o = new api.AchievementUpdateRequest();
  buildCounterAchievementUpdateRequest++;
  if (buildCounterAchievementUpdateRequest < 3) {
    o.achievementId = "foo";
    o.incrementPayload = buildGamesAchievementIncrement();
    o.kind = "foo";
    o.setStepsAtLeastPayload = buildGamesAchievementSetStepsAtLeast();
    o.updateType = "foo";
  }
  buildCounterAchievementUpdateRequest--;
  return o;
}

checkAchievementUpdateRequest(api.AchievementUpdateRequest o) {
  buildCounterAchievementUpdateRequest++;
  if (buildCounterAchievementUpdateRequest < 3) {
    unittest.expect(o.achievementId, unittest.equals('foo'));
    checkGamesAchievementIncrement(o.incrementPayload);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGamesAchievementSetStepsAtLeast(o.setStepsAtLeastPayload);
    unittest.expect(o.updateType, unittest.equals('foo'));
  }
  buildCounterAchievementUpdateRequest--;
}

core.int buildCounterAchievementUpdateResponse = 0;
buildAchievementUpdateResponse() {
  var o = new api.AchievementUpdateResponse();
  buildCounterAchievementUpdateResponse++;
  if (buildCounterAchievementUpdateResponse < 3) {
    o.achievementId = "foo";
    o.currentState = "foo";
    o.currentSteps = 42;
    o.kind = "foo";
    o.newlyUnlocked = true;
    o.updateOccurred = true;
  }
  buildCounterAchievementUpdateResponse--;
  return o;
}

checkAchievementUpdateResponse(api.AchievementUpdateResponse o) {
  buildCounterAchievementUpdateResponse++;
  if (buildCounterAchievementUpdateResponse < 3) {
    unittest.expect(o.achievementId, unittest.equals('foo'));
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.currentSteps, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newlyUnlocked, unittest.isTrue);
    unittest.expect(o.updateOccurred, unittest.isTrue);
  }
  buildCounterAchievementUpdateResponse--;
}

buildUnnamed3724() {
  var o = new core.List<api.ImageAsset>();
  o.add(buildImageAsset());
  o.add(buildImageAsset());
  return o;
}

checkUnnamed3724(core.List<api.ImageAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageAsset(o[0]);
  checkImageAsset(o[1]);
}

buildUnnamed3725() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3725(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3726() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed3726(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.achievementCount = 42;
    o.assets = buildUnnamed3724();
    o.author = "foo";
    o.category = buildApplicationCategory();
    o.description = "foo";
    o.enabledFeatures = buildUnnamed3725();
    o.id = "foo";
    o.instances = buildUnnamed3726();
    o.kind = "foo";
    o.lastUpdatedTimestamp = "foo";
    o.leaderboardCount = 42;
    o.name = "foo";
    o.themeColor = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.achievementCount, unittest.equals(42));
    checkUnnamed3724(o.assets);
    unittest.expect(o.author, unittest.equals('foo'));
    checkApplicationCategory(o.category);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3725(o.enabledFeatures);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3726(o.instances);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
    unittest.expect(o.leaderboardCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.themeColor, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationCategory = 0;
buildApplicationCategory() {
  var o = new api.ApplicationCategory();
  buildCounterApplicationCategory++;
  if (buildCounterApplicationCategory < 3) {
    o.kind = "foo";
    o.primary = "foo";
    o.secondary = "foo";
  }
  buildCounterApplicationCategory--;
  return o;
}

checkApplicationCategory(api.ApplicationCategory o) {
  buildCounterApplicationCategory++;
  if (buildCounterApplicationCategory < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.equals('foo'));
    unittest.expect(o.secondary, unittest.equals('foo'));
  }
  buildCounterApplicationCategory--;
}

core.int buildCounterApplicationVerifyResponse = 0;
buildApplicationVerifyResponse() {
  var o = new api.ApplicationVerifyResponse();
  buildCounterApplicationVerifyResponse++;
  if (buildCounterApplicationVerifyResponse < 3) {
    o.alternatePlayerId = "foo";
    o.kind = "foo";
    o.playerId = "foo";
  }
  buildCounterApplicationVerifyResponse--;
  return o;
}

checkApplicationVerifyResponse(api.ApplicationVerifyResponse o) {
  buildCounterApplicationVerifyResponse++;
  if (buildCounterApplicationVerifyResponse < 3) {
    unittest.expect(o.alternatePlayerId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.playerId, unittest.equals('foo'));
  }
  buildCounterApplicationVerifyResponse--;
}

core.int buildCounterCategory = 0;
buildCategory() {
  var o = new api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.category = "foo";
    o.experiencePoints = "foo";
    o.kind = "foo";
  }
  buildCounterCategory--;
  return o;
}

checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.experiencePoints, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCategory--;
}

buildUnnamed3727() {
  var o = new core.List<api.Category>();
  o.add(buildCategory());
  o.add(buildCategory());
  return o;
}

checkUnnamed3727(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.int buildCounterCategoryListResponse = 0;
buildCategoryListResponse() {
  var o = new api.CategoryListResponse();
  buildCounterCategoryListResponse++;
  if (buildCounterCategoryListResponse < 3) {
    o.items = buildUnnamed3727();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterCategoryListResponse--;
  return o;
}

checkCategoryListResponse(api.CategoryListResponse o) {
  buildCounterCategoryListResponse++;
  if (buildCounterCategoryListResponse < 3) {
    checkUnnamed3727(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCategoryListResponse--;
}

core.int buildCounterEventBatchRecordFailure = 0;
buildEventBatchRecordFailure() {
  var o = new api.EventBatchRecordFailure();
  buildCounterEventBatchRecordFailure++;
  if (buildCounterEventBatchRecordFailure < 3) {
    o.failureCause = "foo";
    o.kind = "foo";
    o.range = buildEventPeriodRange();
  }
  buildCounterEventBatchRecordFailure--;
  return o;
}

checkEventBatchRecordFailure(api.EventBatchRecordFailure o) {
  buildCounterEventBatchRecordFailure++;
  if (buildCounterEventBatchRecordFailure < 3) {
    unittest.expect(o.failureCause, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkEventPeriodRange(o.range);
  }
  buildCounterEventBatchRecordFailure--;
}

core.int buildCounterEventChild = 0;
buildEventChild() {
  var o = new api.EventChild();
  buildCounterEventChild++;
  if (buildCounterEventChild < 3) {
    o.childId = "foo";
    o.kind = "foo";
  }
  buildCounterEventChild--;
  return o;
}

checkEventChild(api.EventChild o) {
  buildCounterEventChild++;
  if (buildCounterEventChild < 3) {
    unittest.expect(o.childId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEventChild--;
}

buildUnnamed3728() {
  var o = new core.List<api.EventChild>();
  o.add(buildEventChild());
  o.add(buildEventChild());
  return o;
}

checkUnnamed3728(core.List<api.EventChild> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventChild(o[0]);
  checkEventChild(o[1]);
}

core.int buildCounterEventDefinition = 0;
buildEventDefinition() {
  var o = new api.EventDefinition();
  buildCounterEventDefinition++;
  if (buildCounterEventDefinition < 3) {
    o.childEvents = buildUnnamed3728();
    o.description = "foo";
    o.displayName = "foo";
    o.id = "foo";
    o.imageUrl = "foo";
    o.isDefaultImageUrl = true;
    o.kind = "foo";
    o.visibility = "foo";
  }
  buildCounterEventDefinition--;
  return o;
}

checkEventDefinition(api.EventDefinition o) {
  buildCounterEventDefinition++;
  if (buildCounterEventDefinition < 3) {
    checkUnnamed3728(o.childEvents);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.isDefaultImageUrl, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterEventDefinition--;
}

buildUnnamed3729() {
  var o = new core.List<api.EventDefinition>();
  o.add(buildEventDefinition());
  o.add(buildEventDefinition());
  return o;
}

checkUnnamed3729(core.List<api.EventDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventDefinition(o[0]);
  checkEventDefinition(o[1]);
}

core.int buildCounterEventDefinitionListResponse = 0;
buildEventDefinitionListResponse() {
  var o = new api.EventDefinitionListResponse();
  buildCounterEventDefinitionListResponse++;
  if (buildCounterEventDefinitionListResponse < 3) {
    o.items = buildUnnamed3729();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterEventDefinitionListResponse--;
  return o;
}

checkEventDefinitionListResponse(api.EventDefinitionListResponse o) {
  buildCounterEventDefinitionListResponse++;
  if (buildCounterEventDefinitionListResponse < 3) {
    checkUnnamed3729(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterEventDefinitionListResponse--;
}

core.int buildCounterEventPeriodRange = 0;
buildEventPeriodRange() {
  var o = new api.EventPeriodRange();
  buildCounterEventPeriodRange++;
  if (buildCounterEventPeriodRange < 3) {
    o.kind = "foo";
    o.periodEndMillis = "foo";
    o.periodStartMillis = "foo";
  }
  buildCounterEventPeriodRange--;
  return o;
}

checkEventPeriodRange(api.EventPeriodRange o) {
  buildCounterEventPeriodRange++;
  if (buildCounterEventPeriodRange < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.periodEndMillis, unittest.equals('foo'));
    unittest.expect(o.periodStartMillis, unittest.equals('foo'));
  }
  buildCounterEventPeriodRange--;
}

buildUnnamed3730() {
  var o = new core.List<api.EventUpdateRequest>();
  o.add(buildEventUpdateRequest());
  o.add(buildEventUpdateRequest());
  return o;
}

checkUnnamed3730(core.List<api.EventUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventUpdateRequest(o[0]);
  checkEventUpdateRequest(o[1]);
}

core.int buildCounterEventPeriodUpdate = 0;
buildEventPeriodUpdate() {
  var o = new api.EventPeriodUpdate();
  buildCounterEventPeriodUpdate++;
  if (buildCounterEventPeriodUpdate < 3) {
    o.kind = "foo";
    o.timePeriod = buildEventPeriodRange();
    o.updates = buildUnnamed3730();
  }
  buildCounterEventPeriodUpdate--;
  return o;
}

checkEventPeriodUpdate(api.EventPeriodUpdate o) {
  buildCounterEventPeriodUpdate++;
  if (buildCounterEventPeriodUpdate < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkEventPeriodRange(o.timePeriod);
    checkUnnamed3730(o.updates);
  }
  buildCounterEventPeriodUpdate--;
}

core.int buildCounterEventRecordFailure = 0;
buildEventRecordFailure() {
  var o = new api.EventRecordFailure();
  buildCounterEventRecordFailure++;
  if (buildCounterEventRecordFailure < 3) {
    o.eventId = "foo";
    o.failureCause = "foo";
    o.kind = "foo";
  }
  buildCounterEventRecordFailure--;
  return o;
}

checkEventRecordFailure(api.EventRecordFailure o) {
  buildCounterEventRecordFailure++;
  if (buildCounterEventRecordFailure < 3) {
    unittest.expect(o.eventId, unittest.equals('foo'));
    unittest.expect(o.failureCause, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEventRecordFailure--;
}

buildUnnamed3731() {
  var o = new core.List<api.EventPeriodUpdate>();
  o.add(buildEventPeriodUpdate());
  o.add(buildEventPeriodUpdate());
  return o;
}

checkUnnamed3731(core.List<api.EventPeriodUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventPeriodUpdate(o[0]);
  checkEventPeriodUpdate(o[1]);
}

core.int buildCounterEventRecordRequest = 0;
buildEventRecordRequest() {
  var o = new api.EventRecordRequest();
  buildCounterEventRecordRequest++;
  if (buildCounterEventRecordRequest < 3) {
    o.currentTimeMillis = "foo";
    o.kind = "foo";
    o.requestId = "foo";
    o.timePeriods = buildUnnamed3731();
  }
  buildCounterEventRecordRequest--;
  return o;
}

checkEventRecordRequest(api.EventRecordRequest o) {
  buildCounterEventRecordRequest++;
  if (buildCounterEventRecordRequest < 3) {
    unittest.expect(o.currentTimeMillis, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    checkUnnamed3731(o.timePeriods);
  }
  buildCounterEventRecordRequest--;
}

core.int buildCounterEventUpdateRequest = 0;
buildEventUpdateRequest() {
  var o = new api.EventUpdateRequest();
  buildCounterEventUpdateRequest++;
  if (buildCounterEventUpdateRequest < 3) {
    o.definitionId = "foo";
    o.kind = "foo";
    o.updateCount = "foo";
  }
  buildCounterEventUpdateRequest--;
  return o;
}

checkEventUpdateRequest(api.EventUpdateRequest o) {
  buildCounterEventUpdateRequest++;
  if (buildCounterEventUpdateRequest < 3) {
    unittest.expect(o.definitionId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.updateCount, unittest.equals('foo'));
  }
  buildCounterEventUpdateRequest--;
}

buildUnnamed3732() {
  var o = new core.List<api.EventBatchRecordFailure>();
  o.add(buildEventBatchRecordFailure());
  o.add(buildEventBatchRecordFailure());
  return o;
}

checkUnnamed3732(core.List<api.EventBatchRecordFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventBatchRecordFailure(o[0]);
  checkEventBatchRecordFailure(o[1]);
}

buildUnnamed3733() {
  var o = new core.List<api.EventRecordFailure>();
  o.add(buildEventRecordFailure());
  o.add(buildEventRecordFailure());
  return o;
}

checkUnnamed3733(core.List<api.EventRecordFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventRecordFailure(o[0]);
  checkEventRecordFailure(o[1]);
}

buildUnnamed3734() {
  var o = new core.List<api.PlayerEvent>();
  o.add(buildPlayerEvent());
  o.add(buildPlayerEvent());
  return o;
}

checkUnnamed3734(core.List<api.PlayerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerEvent(o[0]);
  checkPlayerEvent(o[1]);
}

core.int buildCounterEventUpdateResponse = 0;
buildEventUpdateResponse() {
  var o = new api.EventUpdateResponse();
  buildCounterEventUpdateResponse++;
  if (buildCounterEventUpdateResponse < 3) {
    o.batchFailures = buildUnnamed3732();
    o.eventFailures = buildUnnamed3733();
    o.kind = "foo";
    o.playerEvents = buildUnnamed3734();
  }
  buildCounterEventUpdateResponse--;
  return o;
}

checkEventUpdateResponse(api.EventUpdateResponse o) {
  buildCounterEventUpdateResponse++;
  if (buildCounterEventUpdateResponse < 3) {
    checkUnnamed3732(o.batchFailures);
    checkUnnamed3733(o.eventFailures);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3734(o.playerEvents);
  }
  buildCounterEventUpdateResponse--;
}

core.int buildCounterGamesAchievementIncrement = 0;
buildGamesAchievementIncrement() {
  var o = new api.GamesAchievementIncrement();
  buildCounterGamesAchievementIncrement++;
  if (buildCounterGamesAchievementIncrement < 3) {
    o.kind = "foo";
    o.requestId = "foo";
    o.steps = 42;
  }
  buildCounterGamesAchievementIncrement--;
  return o;
}

checkGamesAchievementIncrement(api.GamesAchievementIncrement o) {
  buildCounterGamesAchievementIncrement++;
  if (buildCounterGamesAchievementIncrement < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.steps, unittest.equals(42));
  }
  buildCounterGamesAchievementIncrement--;
}

core.int buildCounterGamesAchievementSetStepsAtLeast = 0;
buildGamesAchievementSetStepsAtLeast() {
  var o = new api.GamesAchievementSetStepsAtLeast();
  buildCounterGamesAchievementSetStepsAtLeast++;
  if (buildCounterGamesAchievementSetStepsAtLeast < 3) {
    o.kind = "foo";
    o.steps = 42;
  }
  buildCounterGamesAchievementSetStepsAtLeast--;
  return o;
}

checkGamesAchievementSetStepsAtLeast(api.GamesAchievementSetStepsAtLeast o) {
  buildCounterGamesAchievementSetStepsAtLeast++;
  if (buildCounterGamesAchievementSetStepsAtLeast < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.steps, unittest.equals(42));
  }
  buildCounterGamesAchievementSetStepsAtLeast--;
}

core.int buildCounterImageAsset = 0;
buildImageAsset() {
  var o = new api.ImageAsset();
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    o.height = 42;
    o.kind = "foo";
    o.name = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterImageAsset--;
  return o;
}

checkImageAsset(api.ImageAsset o) {
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterImageAsset--;
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.acquisitionUri = "foo";
    o.androidInstance = buildInstanceAndroidDetails();
    o.iosInstance = buildInstanceIosDetails();
    o.kind = "foo";
    o.name = "foo";
    o.platformType = "foo";
    o.realtimePlay = true;
    o.turnBasedPlay = true;
    o.webInstance = buildInstanceWebDetails();
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.acquisitionUri, unittest.equals('foo'));
    checkInstanceAndroidDetails(o.androidInstance);
    checkInstanceIosDetails(o.iosInstance);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.platformType, unittest.equals('foo'));
    unittest.expect(o.realtimePlay, unittest.isTrue);
    unittest.expect(o.turnBasedPlay, unittest.isTrue);
    checkInstanceWebDetails(o.webInstance);
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceAndroidDetails = 0;
buildInstanceAndroidDetails() {
  var o = new api.InstanceAndroidDetails();
  buildCounterInstanceAndroidDetails++;
  if (buildCounterInstanceAndroidDetails < 3) {
    o.enablePiracyCheck = true;
    o.kind = "foo";
    o.packageName = "foo";
    o.preferred = true;
  }
  buildCounterInstanceAndroidDetails--;
  return o;
}

checkInstanceAndroidDetails(api.InstanceAndroidDetails o) {
  buildCounterInstanceAndroidDetails++;
  if (buildCounterInstanceAndroidDetails < 3) {
    unittest.expect(o.enablePiracyCheck, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.preferred, unittest.isTrue);
  }
  buildCounterInstanceAndroidDetails--;
}

core.int buildCounterInstanceIosDetails = 0;
buildInstanceIosDetails() {
  var o = new api.InstanceIosDetails();
  buildCounterInstanceIosDetails++;
  if (buildCounterInstanceIosDetails < 3) {
    o.bundleIdentifier = "foo";
    o.itunesAppId = "foo";
    o.kind = "foo";
    o.preferredForIpad = true;
    o.preferredForIphone = true;
    o.supportIpad = true;
    o.supportIphone = true;
  }
  buildCounterInstanceIosDetails--;
  return o;
}

checkInstanceIosDetails(api.InstanceIosDetails o) {
  buildCounterInstanceIosDetails++;
  if (buildCounterInstanceIosDetails < 3) {
    unittest.expect(o.bundleIdentifier, unittest.equals('foo'));
    unittest.expect(o.itunesAppId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.preferredForIpad, unittest.isTrue);
    unittest.expect(o.preferredForIphone, unittest.isTrue);
    unittest.expect(o.supportIpad, unittest.isTrue);
    unittest.expect(o.supportIphone, unittest.isTrue);
  }
  buildCounterInstanceIosDetails--;
}

core.int buildCounterInstanceWebDetails = 0;
buildInstanceWebDetails() {
  var o = new api.InstanceWebDetails();
  buildCounterInstanceWebDetails++;
  if (buildCounterInstanceWebDetails < 3) {
    o.kind = "foo";
    o.launchUrl = "foo";
    o.preferred = true;
  }
  buildCounterInstanceWebDetails--;
  return o;
}

checkInstanceWebDetails(api.InstanceWebDetails o) {
  buildCounterInstanceWebDetails++;
  if (buildCounterInstanceWebDetails < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.launchUrl, unittest.equals('foo'));
    unittest.expect(o.preferred, unittest.isTrue);
  }
  buildCounterInstanceWebDetails--;
}

core.int buildCounterLeaderboard = 0;
buildLeaderboard() {
  var o = new api.Leaderboard();
  buildCounterLeaderboard++;
  if (buildCounterLeaderboard < 3) {
    o.iconUrl = "foo";
    o.id = "foo";
    o.isIconUrlDefault = true;
    o.kind = "foo";
    o.name = "foo";
    o.order = "foo";
  }
  buildCounterLeaderboard--;
  return o;
}

checkLeaderboard(api.Leaderboard o) {
  buildCounterLeaderboard++;
  if (buildCounterLeaderboard < 3) {
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isIconUrlDefault, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.order, unittest.equals('foo'));
  }
  buildCounterLeaderboard--;
}

core.int buildCounterLeaderboardEntry = 0;
buildLeaderboardEntry() {
  var o = new api.LeaderboardEntry();
  buildCounterLeaderboardEntry++;
  if (buildCounterLeaderboardEntry < 3) {
    o.formattedScore = "foo";
    o.formattedScoreRank = "foo";
    o.kind = "foo";
    o.player = buildPlayer();
    o.scoreRank = "foo";
    o.scoreTag = "foo";
    o.scoreValue = "foo";
    o.timeSpan = "foo";
    o.writeTimestampMillis = "foo";
  }
  buildCounterLeaderboardEntry--;
  return o;
}

checkLeaderboardEntry(api.LeaderboardEntry o) {
  buildCounterLeaderboardEntry++;
  if (buildCounterLeaderboardEntry < 3) {
    unittest.expect(o.formattedScore, unittest.equals('foo'));
    unittest.expect(o.formattedScoreRank, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlayer(o.player);
    unittest.expect(o.scoreRank, unittest.equals('foo'));
    unittest.expect(o.scoreTag, unittest.equals('foo'));
    unittest.expect(o.scoreValue, unittest.equals('foo'));
    unittest.expect(o.timeSpan, unittest.equals('foo'));
    unittest.expect(o.writeTimestampMillis, unittest.equals('foo'));
  }
  buildCounterLeaderboardEntry--;
}

buildUnnamed3735() {
  var o = new core.List<api.Leaderboard>();
  o.add(buildLeaderboard());
  o.add(buildLeaderboard());
  return o;
}

checkUnnamed3735(core.List<api.Leaderboard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLeaderboard(o[0]);
  checkLeaderboard(o[1]);
}

core.int buildCounterLeaderboardListResponse = 0;
buildLeaderboardListResponse() {
  var o = new api.LeaderboardListResponse();
  buildCounterLeaderboardListResponse++;
  if (buildCounterLeaderboardListResponse < 3) {
    o.items = buildUnnamed3735();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterLeaderboardListResponse--;
  return o;
}

checkLeaderboardListResponse(api.LeaderboardListResponse o) {
  buildCounterLeaderboardListResponse++;
  if (buildCounterLeaderboardListResponse < 3) {
    checkUnnamed3735(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterLeaderboardListResponse--;
}

core.int buildCounterLeaderboardScoreRank = 0;
buildLeaderboardScoreRank() {
  var o = new api.LeaderboardScoreRank();
  buildCounterLeaderboardScoreRank++;
  if (buildCounterLeaderboardScoreRank < 3) {
    o.formattedNumScores = "foo";
    o.formattedRank = "foo";
    o.kind = "foo";
    o.numScores = "foo";
    o.rank = "foo";
  }
  buildCounterLeaderboardScoreRank--;
  return o;
}

checkLeaderboardScoreRank(api.LeaderboardScoreRank o) {
  buildCounterLeaderboardScoreRank++;
  if (buildCounterLeaderboardScoreRank < 3) {
    unittest.expect(o.formattedNumScores, unittest.equals('foo'));
    unittest.expect(o.formattedRank, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numScores, unittest.equals('foo'));
    unittest.expect(o.rank, unittest.equals('foo'));
  }
  buildCounterLeaderboardScoreRank--;
}

buildUnnamed3736() {
  var o = new core.List<api.LeaderboardEntry>();
  o.add(buildLeaderboardEntry());
  o.add(buildLeaderboardEntry());
  return o;
}

checkUnnamed3736(core.List<api.LeaderboardEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLeaderboardEntry(o[0]);
  checkLeaderboardEntry(o[1]);
}

core.int buildCounterLeaderboardScores = 0;
buildLeaderboardScores() {
  var o = new api.LeaderboardScores();
  buildCounterLeaderboardScores++;
  if (buildCounterLeaderboardScores < 3) {
    o.items = buildUnnamed3736();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.numScores = "foo";
    o.playerScore = buildLeaderboardEntry();
    o.prevPageToken = "foo";
  }
  buildCounterLeaderboardScores--;
  return o;
}

checkLeaderboardScores(api.LeaderboardScores o) {
  buildCounterLeaderboardScores++;
  if (buildCounterLeaderboardScores < 3) {
    checkUnnamed3736(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.numScores, unittest.equals('foo'));
    checkLeaderboardEntry(o.playerScore);
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterLeaderboardScores--;
}

buildUnnamed3737() {
  var o = new core.List<api.PlayerLevel>();
  o.add(buildPlayerLevel());
  o.add(buildPlayerLevel());
  return o;
}

checkUnnamed3737(core.List<api.PlayerLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerLevel(o[0]);
  checkPlayerLevel(o[1]);
}

core.int buildCounterMetagameConfig = 0;
buildMetagameConfig() {
  var o = new api.MetagameConfig();
  buildCounterMetagameConfig++;
  if (buildCounterMetagameConfig < 3) {
    o.currentVersion = 42;
    o.kind = "foo";
    o.playerLevels = buildUnnamed3737();
  }
  buildCounterMetagameConfig--;
  return o;
}

checkMetagameConfig(api.MetagameConfig o) {
  buildCounterMetagameConfig++;
  if (buildCounterMetagameConfig < 3) {
    unittest.expect(o.currentVersion, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3737(o.playerLevels);
  }
  buildCounterMetagameConfig--;
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
    o.experienceInfo = buildPlayerExperienceInfo();
    o.friendStatus = "foo";
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
    checkPlayerExperienceInfo(o.experienceInfo);
    unittest.expect(o.friendStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlayerName(o.name);
    unittest.expect(o.originalPlayerId, unittest.equals('foo'));
    unittest.expect(o.playerId, unittest.equals('foo'));
    checkProfileSettings(o.profileSettings);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlayer--;
}

core.int buildCounterPlayerAchievement = 0;
buildPlayerAchievement() {
  var o = new api.PlayerAchievement();
  buildCounterPlayerAchievement++;
  if (buildCounterPlayerAchievement < 3) {
    o.achievementState = "foo";
    o.currentSteps = 42;
    o.experiencePoints = "foo";
    o.formattedCurrentStepsString = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lastUpdatedTimestamp = "foo";
  }
  buildCounterPlayerAchievement--;
  return o;
}

checkPlayerAchievement(api.PlayerAchievement o) {
  buildCounterPlayerAchievement++;
  if (buildCounterPlayerAchievement < 3) {
    unittest.expect(o.achievementState, unittest.equals('foo'));
    unittest.expect(o.currentSteps, unittest.equals(42));
    unittest.expect(o.experiencePoints, unittest.equals('foo'));
    unittest.expect(o.formattedCurrentStepsString, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
  }
  buildCounterPlayerAchievement--;
}

buildUnnamed3738() {
  var o = new core.List<api.PlayerAchievement>();
  o.add(buildPlayerAchievement());
  o.add(buildPlayerAchievement());
  return o;
}

checkUnnamed3738(core.List<api.PlayerAchievement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerAchievement(o[0]);
  checkPlayerAchievement(o[1]);
}

core.int buildCounterPlayerAchievementListResponse = 0;
buildPlayerAchievementListResponse() {
  var o = new api.PlayerAchievementListResponse();
  buildCounterPlayerAchievementListResponse++;
  if (buildCounterPlayerAchievementListResponse < 3) {
    o.items = buildUnnamed3738();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterPlayerAchievementListResponse--;
  return o;
}

checkPlayerAchievementListResponse(api.PlayerAchievementListResponse o) {
  buildCounterPlayerAchievementListResponse++;
  if (buildCounterPlayerAchievementListResponse < 3) {
    checkUnnamed3738(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPlayerAchievementListResponse--;
}

core.int buildCounterPlayerEvent = 0;
buildPlayerEvent() {
  var o = new api.PlayerEvent();
  buildCounterPlayerEvent++;
  if (buildCounterPlayerEvent < 3) {
    o.definitionId = "foo";
    o.formattedNumEvents = "foo";
    o.kind = "foo";
    o.numEvents = "foo";
    o.playerId = "foo";
  }
  buildCounterPlayerEvent--;
  return o;
}

checkPlayerEvent(api.PlayerEvent o) {
  buildCounterPlayerEvent++;
  if (buildCounterPlayerEvent < 3) {
    unittest.expect(o.definitionId, unittest.equals('foo'));
    unittest.expect(o.formattedNumEvents, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numEvents, unittest.equals('foo'));
    unittest.expect(o.playerId, unittest.equals('foo'));
  }
  buildCounterPlayerEvent--;
}

buildUnnamed3739() {
  var o = new core.List<api.PlayerEvent>();
  o.add(buildPlayerEvent());
  o.add(buildPlayerEvent());
  return o;
}

checkUnnamed3739(core.List<api.PlayerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerEvent(o[0]);
  checkPlayerEvent(o[1]);
}

core.int buildCounterPlayerEventListResponse = 0;
buildPlayerEventListResponse() {
  var o = new api.PlayerEventListResponse();
  buildCounterPlayerEventListResponse++;
  if (buildCounterPlayerEventListResponse < 3) {
    o.items = buildUnnamed3739();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterPlayerEventListResponse--;
  return o;
}

checkPlayerEventListResponse(api.PlayerEventListResponse o) {
  buildCounterPlayerEventListResponse++;
  if (buildCounterPlayerEventListResponse < 3) {
    checkUnnamed3739(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPlayerEventListResponse--;
}

core.int buildCounterPlayerExperienceInfo = 0;
buildPlayerExperienceInfo() {
  var o = new api.PlayerExperienceInfo();
  buildCounterPlayerExperienceInfo++;
  if (buildCounterPlayerExperienceInfo < 3) {
    o.currentExperiencePoints = "foo";
    o.currentLevel = buildPlayerLevel();
    o.kind = "foo";
    o.lastLevelUpTimestampMillis = "foo";
    o.nextLevel = buildPlayerLevel();
  }
  buildCounterPlayerExperienceInfo--;
  return o;
}

checkPlayerExperienceInfo(api.PlayerExperienceInfo o) {
  buildCounterPlayerExperienceInfo++;
  if (buildCounterPlayerExperienceInfo < 3) {
    unittest.expect(o.currentExperiencePoints, unittest.equals('foo'));
    checkPlayerLevel(o.currentLevel);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastLevelUpTimestampMillis, unittest.equals('foo'));
    checkPlayerLevel(o.nextLevel);
  }
  buildCounterPlayerExperienceInfo--;
}

core.int buildCounterPlayerLeaderboardScore = 0;
buildPlayerLeaderboardScore() {
  var o = new api.PlayerLeaderboardScore();
  buildCounterPlayerLeaderboardScore++;
  if (buildCounterPlayerLeaderboardScore < 3) {
    o.friendsRank = buildLeaderboardScoreRank();
    o.kind = "foo";
    o.leaderboardId = "foo";
    o.publicRank = buildLeaderboardScoreRank();
    o.scoreString = "foo";
    o.scoreTag = "foo";
    o.scoreValue = "foo";
    o.socialRank = buildLeaderboardScoreRank();
    o.timeSpan = "foo";
    o.writeTimestamp = "foo";
  }
  buildCounterPlayerLeaderboardScore--;
  return o;
}

checkPlayerLeaderboardScore(api.PlayerLeaderboardScore o) {
  buildCounterPlayerLeaderboardScore++;
  if (buildCounterPlayerLeaderboardScore < 3) {
    checkLeaderboardScoreRank(o.friendsRank);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.leaderboardId, unittest.equals('foo'));
    checkLeaderboardScoreRank(o.publicRank);
    unittest.expect(o.scoreString, unittest.equals('foo'));
    unittest.expect(o.scoreTag, unittest.equals('foo'));
    unittest.expect(o.scoreValue, unittest.equals('foo'));
    checkLeaderboardScoreRank(o.socialRank);
    unittest.expect(o.timeSpan, unittest.equals('foo'));
    unittest.expect(o.writeTimestamp, unittest.equals('foo'));
  }
  buildCounterPlayerLeaderboardScore--;
}

buildUnnamed3740() {
  var o = new core.List<api.PlayerLeaderboardScore>();
  o.add(buildPlayerLeaderboardScore());
  o.add(buildPlayerLeaderboardScore());
  return o;
}

checkUnnamed3740(core.List<api.PlayerLeaderboardScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerLeaderboardScore(o[0]);
  checkPlayerLeaderboardScore(o[1]);
}

core.int buildCounterPlayerLeaderboardScoreListResponse = 0;
buildPlayerLeaderboardScoreListResponse() {
  var o = new api.PlayerLeaderboardScoreListResponse();
  buildCounterPlayerLeaderboardScoreListResponse++;
  if (buildCounterPlayerLeaderboardScoreListResponse < 3) {
    o.items = buildUnnamed3740();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.player = buildPlayer();
  }
  buildCounterPlayerLeaderboardScoreListResponse--;
  return o;
}

checkPlayerLeaderboardScoreListResponse(
    api.PlayerLeaderboardScoreListResponse o) {
  buildCounterPlayerLeaderboardScoreListResponse++;
  if (buildCounterPlayerLeaderboardScoreListResponse < 3) {
    checkUnnamed3740(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkPlayer(o.player);
  }
  buildCounterPlayerLeaderboardScoreListResponse--;
}

core.int buildCounterPlayerLevel = 0;
buildPlayerLevel() {
  var o = new api.PlayerLevel();
  buildCounterPlayerLevel++;
  if (buildCounterPlayerLevel < 3) {
    o.kind = "foo";
    o.level = 42;
    o.maxExperiencePoints = "foo";
    o.minExperiencePoints = "foo";
  }
  buildCounterPlayerLevel--;
  return o;
}

checkPlayerLevel(api.PlayerLevel o) {
  buildCounterPlayerLevel++;
  if (buildCounterPlayerLevel < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals(42));
    unittest.expect(o.maxExperiencePoints, unittest.equals('foo'));
    unittest.expect(o.minExperiencePoints, unittest.equals('foo'));
  }
  buildCounterPlayerLevel--;
}

buildUnnamed3741() {
  var o = new core.List<api.Player>();
  o.add(buildPlayer());
  o.add(buildPlayer());
  return o;
}

checkUnnamed3741(core.List<api.Player> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayer(o[0]);
  checkPlayer(o[1]);
}

core.int buildCounterPlayerListResponse = 0;
buildPlayerListResponse() {
  var o = new api.PlayerListResponse();
  buildCounterPlayerListResponse++;
  if (buildCounterPlayerListResponse < 3) {
    o.items = buildUnnamed3741();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterPlayerListResponse--;
  return o;
}

checkPlayerListResponse(api.PlayerListResponse o) {
  buildCounterPlayerListResponse++;
  if (buildCounterPlayerListResponse < 3) {
    checkUnnamed3741(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPlayerListResponse--;
}

core.int buildCounterPlayerScore = 0;
buildPlayerScore() {
  var o = new api.PlayerScore();
  buildCounterPlayerScore++;
  if (buildCounterPlayerScore < 3) {
    o.formattedScore = "foo";
    o.kind = "foo";
    o.score = "foo";
    o.scoreTag = "foo";
    o.timeSpan = "foo";
  }
  buildCounterPlayerScore--;
  return o;
}

checkPlayerScore(api.PlayerScore o) {
  buildCounterPlayerScore++;
  if (buildCounterPlayerScore < 3) {
    unittest.expect(o.formattedScore, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals('foo'));
    unittest.expect(o.scoreTag, unittest.equals('foo'));
    unittest.expect(o.timeSpan, unittest.equals('foo'));
  }
  buildCounterPlayerScore--;
}

buildUnnamed3742() {
  var o = new core.List<api.PlayerScoreResponse>();
  o.add(buildPlayerScoreResponse());
  o.add(buildPlayerScoreResponse());
  return o;
}

checkUnnamed3742(core.List<api.PlayerScoreResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScoreResponse(o[0]);
  checkPlayerScoreResponse(o[1]);
}

core.int buildCounterPlayerScoreListResponse = 0;
buildPlayerScoreListResponse() {
  var o = new api.PlayerScoreListResponse();
  buildCounterPlayerScoreListResponse++;
  if (buildCounterPlayerScoreListResponse < 3) {
    o.kind = "foo";
    o.submittedScores = buildUnnamed3742();
  }
  buildCounterPlayerScoreListResponse--;
  return o;
}

checkPlayerScoreListResponse(api.PlayerScoreListResponse o) {
  buildCounterPlayerScoreListResponse++;
  if (buildCounterPlayerScoreListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3742(o.submittedScores);
  }
  buildCounterPlayerScoreListResponse--;
}

buildUnnamed3743() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3743(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3744() {
  var o = new core.List<api.PlayerScore>();
  o.add(buildPlayerScore());
  o.add(buildPlayerScore());
  return o;
}

checkUnnamed3744(core.List<api.PlayerScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScore(o[0]);
  checkPlayerScore(o[1]);
}

core.int buildCounterPlayerScoreResponse = 0;
buildPlayerScoreResponse() {
  var o = new api.PlayerScoreResponse();
  buildCounterPlayerScoreResponse++;
  if (buildCounterPlayerScoreResponse < 3) {
    o.beatenScoreTimeSpans = buildUnnamed3743();
    o.formattedScore = "foo";
    o.kind = "foo";
    o.leaderboardId = "foo";
    o.scoreTag = "foo";
    o.unbeatenScores = buildUnnamed3744();
  }
  buildCounterPlayerScoreResponse--;
  return o;
}

checkPlayerScoreResponse(api.PlayerScoreResponse o) {
  buildCounterPlayerScoreResponse++;
  if (buildCounterPlayerScoreResponse < 3) {
    checkUnnamed3743(o.beatenScoreTimeSpans);
    unittest.expect(o.formattedScore, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.leaderboardId, unittest.equals('foo'));
    unittest.expect(o.scoreTag, unittest.equals('foo'));
    checkUnnamed3744(o.unbeatenScores);
  }
  buildCounterPlayerScoreResponse--;
}

buildUnnamed3745() {
  var o = new core.List<api.ScoreSubmission>();
  o.add(buildScoreSubmission());
  o.add(buildScoreSubmission());
  return o;
}

checkUnnamed3745(core.List<api.ScoreSubmission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScoreSubmission(o[0]);
  checkScoreSubmission(o[1]);
}

core.int buildCounterPlayerScoreSubmissionList = 0;
buildPlayerScoreSubmissionList() {
  var o = new api.PlayerScoreSubmissionList();
  buildCounterPlayerScoreSubmissionList++;
  if (buildCounterPlayerScoreSubmissionList < 3) {
    o.kind = "foo";
    o.scores = buildUnnamed3745();
  }
  buildCounterPlayerScoreSubmissionList--;
  return o;
}

checkPlayerScoreSubmissionList(api.PlayerScoreSubmissionList o) {
  buildCounterPlayerScoreSubmissionList++;
  if (buildCounterPlayerScoreSubmissionList < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3745(o.scores);
  }
  buildCounterPlayerScoreSubmissionList--;
}

core.int buildCounterProfileSettings = 0;
buildProfileSettings() {
  var o = new api.ProfileSettings();
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    o.friendsListVisibility = "foo";
    o.kind = "foo";
    o.profileVisible = true;
  }
  buildCounterProfileSettings--;
  return o;
}

checkProfileSettings(api.ProfileSettings o) {
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    unittest.expect(o.friendsListVisibility, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.profileVisible, unittest.isTrue);
  }
  buildCounterProfileSettings--;
}

core.int buildCounterRevisionCheckResponse = 0;
buildRevisionCheckResponse() {
  var o = new api.RevisionCheckResponse();
  buildCounterRevisionCheckResponse++;
  if (buildCounterRevisionCheckResponse < 3) {
    o.apiVersion = "foo";
    o.kind = "foo";
    o.revisionStatus = "foo";
  }
  buildCounterRevisionCheckResponse--;
  return o;
}

checkRevisionCheckResponse(api.RevisionCheckResponse o) {
  buildCounterRevisionCheckResponse++;
  if (buildCounterRevisionCheckResponse < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.revisionStatus, unittest.equals('foo'));
  }
  buildCounterRevisionCheckResponse--;
}

core.int buildCounterScoreSubmission = 0;
buildScoreSubmission() {
  var o = new api.ScoreSubmission();
  buildCounterScoreSubmission++;
  if (buildCounterScoreSubmission < 3) {
    o.kind = "foo";
    o.leaderboardId = "foo";
    o.score = "foo";
    o.scoreTag = "foo";
    o.signature = "foo";
  }
  buildCounterScoreSubmission--;
  return o;
}

checkScoreSubmission(api.ScoreSubmission o) {
  buildCounterScoreSubmission++;
  if (buildCounterScoreSubmission < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.leaderboardId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals('foo'));
    unittest.expect(o.scoreTag, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterScoreSubmission--;
}

core.int buildCounterSnapshot = 0;
buildSnapshot() {
  var o = new api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.coverImage = buildSnapshotImage();
    o.description = "foo";
    o.driveId = "foo";
    o.durationMillis = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.lastModifiedMillis = "foo";
    o.progressValue = "foo";
    o.title = "foo";
    o.type = "foo";
    o.uniqueName = "foo";
  }
  buildCounterSnapshot--;
  return o;
}

checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    checkSnapshotImage(o.coverImage);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.driveId, unittest.equals('foo'));
    unittest.expect(o.durationMillis, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModifiedMillis, unittest.equals('foo'));
    unittest.expect(o.progressValue, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.uniqueName, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotImage = 0;
buildSnapshotImage() {
  var o = new api.SnapshotImage();
  buildCounterSnapshotImage++;
  if (buildCounterSnapshotImage < 3) {
    o.height = 42;
    o.kind = "foo";
    o.mimeType = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterSnapshotImage--;
  return o;
}

checkSnapshotImage(api.SnapshotImage o) {
  buildCounterSnapshotImage++;
  if (buildCounterSnapshotImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterSnapshotImage--;
}

buildUnnamed3746() {
  var o = new core.List<api.Snapshot>();
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

checkUnnamed3746(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterSnapshotListResponse = 0;
buildSnapshotListResponse() {
  var o = new api.SnapshotListResponse();
  buildCounterSnapshotListResponse++;
  if (buildCounterSnapshotListResponse < 3) {
    o.items = buildUnnamed3746();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterSnapshotListResponse--;
  return o;
}

checkSnapshotListResponse(api.SnapshotListResponse o) {
  buildCounterSnapshotListResponse++;
  if (buildCounterSnapshotListResponse < 3) {
    checkUnnamed3746(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSnapshotListResponse--;
}

core.int buildCounterStatsResponse = 0;
buildStatsResponse() {
  var o = new api.StatsResponse();
  buildCounterStatsResponse++;
  if (buildCounterStatsResponse < 3) {
    o.avgSessionLengthMinutes = 42.0;
    o.churnProbability = 42.0;
    o.daysSinceLastPlayed = 42;
    o.highSpenderProbability = 42.0;
    o.kind = "foo";
    o.numPurchases = 42;
    o.numSessions = 42;
    o.numSessionsPercentile = 42.0;
    o.spendPercentile = 42.0;
    o.spendProbability = 42.0;
    o.totalSpendNext28Days = 42.0;
  }
  buildCounterStatsResponse--;
  return o;
}

checkStatsResponse(api.StatsResponse o) {
  buildCounterStatsResponse++;
  if (buildCounterStatsResponse < 3) {
    unittest.expect(o.avgSessionLengthMinutes, unittest.equals(42.0));
    unittest.expect(o.churnProbability, unittest.equals(42.0));
    unittest.expect(o.daysSinceLastPlayed, unittest.equals(42));
    unittest.expect(o.highSpenderProbability, unittest.equals(42.0));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numPurchases, unittest.equals(42));
    unittest.expect(o.numSessions, unittest.equals(42));
    unittest.expect(o.numSessionsPercentile, unittest.equals(42.0));
    unittest.expect(o.spendPercentile, unittest.equals(42.0));
    unittest.expect(o.spendProbability, unittest.equals(42.0));
    unittest.expect(o.totalSpendNext28Days, unittest.equals(42.0));
  }
  buildCounterStatsResponse--;
}

main() {
  unittest.group("obj-schema-AchievementDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementDefinition();
      var od = new api.AchievementDefinition.fromJson(o.toJson());
      checkAchievementDefinition(od);
    });
  });

  unittest.group("obj-schema-AchievementDefinitionsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementDefinitionsListResponse();
      var od = new api.AchievementDefinitionsListResponse.fromJson(o.toJson());
      checkAchievementDefinitionsListResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementIncrementResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementIncrementResponse();
      var od = new api.AchievementIncrementResponse.fromJson(o.toJson());
      checkAchievementIncrementResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementRevealResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementRevealResponse();
      var od = new api.AchievementRevealResponse.fromJson(o.toJson());
      checkAchievementRevealResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementSetStepsAtLeastResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementSetStepsAtLeastResponse();
      var od = new api.AchievementSetStepsAtLeastResponse.fromJson(o.toJson());
      checkAchievementSetStepsAtLeastResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementUnlockResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementUnlockResponse();
      var od = new api.AchievementUnlockResponse.fromJson(o.toJson());
      checkAchievementUnlockResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementUpdateMultipleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementUpdateMultipleRequest();
      var od = new api.AchievementUpdateMultipleRequest.fromJson(o.toJson());
      checkAchievementUpdateMultipleRequest(od);
    });
  });

  unittest.group("obj-schema-AchievementUpdateMultipleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementUpdateMultipleResponse();
      var od = new api.AchievementUpdateMultipleResponse.fromJson(o.toJson());
      checkAchievementUpdateMultipleResponse(od);
    });
  });

  unittest.group("obj-schema-AchievementUpdateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementUpdateRequest();
      var od = new api.AchievementUpdateRequest.fromJson(o.toJson());
      checkAchievementUpdateRequest(od);
    });
  });

  unittest.group("obj-schema-AchievementUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementUpdateResponse();
      var od = new api.AchievementUpdateResponse.fromJson(o.toJson());
      checkAchievementUpdateResponse(od);
    });
  });

  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-ApplicationCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationCategory();
      var od = new api.ApplicationCategory.fromJson(o.toJson());
      checkApplicationCategory(od);
    });
  });

  unittest.group("obj-schema-ApplicationVerifyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationVerifyResponse();
      var od = new api.ApplicationVerifyResponse.fromJson(o.toJson());
      checkApplicationVerifyResponse(od);
    });
  });

  unittest.group("obj-schema-Category", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategory();
      var od = new api.Category.fromJson(o.toJson());
      checkCategory(od);
    });
  });

  unittest.group("obj-schema-CategoryListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCategoryListResponse();
      var od = new api.CategoryListResponse.fromJson(o.toJson());
      checkCategoryListResponse(od);
    });
  });

  unittest.group("obj-schema-EventBatchRecordFailure", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventBatchRecordFailure();
      var od = new api.EventBatchRecordFailure.fromJson(o.toJson());
      checkEventBatchRecordFailure(od);
    });
  });

  unittest.group("obj-schema-EventChild", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventChild();
      var od = new api.EventChild.fromJson(o.toJson());
      checkEventChild(od);
    });
  });

  unittest.group("obj-schema-EventDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventDefinition();
      var od = new api.EventDefinition.fromJson(o.toJson());
      checkEventDefinition(od);
    });
  });

  unittest.group("obj-schema-EventDefinitionListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventDefinitionListResponse();
      var od = new api.EventDefinitionListResponse.fromJson(o.toJson());
      checkEventDefinitionListResponse(od);
    });
  });

  unittest.group("obj-schema-EventPeriodRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventPeriodRange();
      var od = new api.EventPeriodRange.fromJson(o.toJson());
      checkEventPeriodRange(od);
    });
  });

  unittest.group("obj-schema-EventPeriodUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventPeriodUpdate();
      var od = new api.EventPeriodUpdate.fromJson(o.toJson());
      checkEventPeriodUpdate(od);
    });
  });

  unittest.group("obj-schema-EventRecordFailure", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventRecordFailure();
      var od = new api.EventRecordFailure.fromJson(o.toJson());
      checkEventRecordFailure(od);
    });
  });

  unittest.group("obj-schema-EventRecordRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventRecordRequest();
      var od = new api.EventRecordRequest.fromJson(o.toJson());
      checkEventRecordRequest(od);
    });
  });

  unittest.group("obj-schema-EventUpdateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventUpdateRequest();
      var od = new api.EventUpdateRequest.fromJson(o.toJson());
      checkEventUpdateRequest(od);
    });
  });

  unittest.group("obj-schema-EventUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventUpdateResponse();
      var od = new api.EventUpdateResponse.fromJson(o.toJson());
      checkEventUpdateResponse(od);
    });
  });

  unittest.group("obj-schema-GamesAchievementIncrement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesAchievementIncrement();
      var od = new api.GamesAchievementIncrement.fromJson(o.toJson());
      checkGamesAchievementIncrement(od);
    });
  });

  unittest.group("obj-schema-GamesAchievementSetStepsAtLeast", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesAchievementSetStepsAtLeast();
      var od = new api.GamesAchievementSetStepsAtLeast.fromJson(o.toJson());
      checkGamesAchievementSetStepsAtLeast(od);
    });
  });

  unittest.group("obj-schema-ImageAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageAsset();
      var od = new api.ImageAsset.fromJson(o.toJson());
      checkImageAsset(od);
    });
  });

  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });

  unittest.group("obj-schema-InstanceAndroidDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceAndroidDetails();
      var od = new api.InstanceAndroidDetails.fromJson(o.toJson());
      checkInstanceAndroidDetails(od);
    });
  });

  unittest.group("obj-schema-InstanceIosDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceIosDetails();
      var od = new api.InstanceIosDetails.fromJson(o.toJson());
      checkInstanceIosDetails(od);
    });
  });

  unittest.group("obj-schema-InstanceWebDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceWebDetails();
      var od = new api.InstanceWebDetails.fromJson(o.toJson());
      checkInstanceWebDetails(od);
    });
  });

  unittest.group("obj-schema-Leaderboard", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaderboard();
      var od = new api.Leaderboard.fromJson(o.toJson());
      checkLeaderboard(od);
    });
  });

  unittest.group("obj-schema-LeaderboardEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaderboardEntry();
      var od = new api.LeaderboardEntry.fromJson(o.toJson());
      checkLeaderboardEntry(od);
    });
  });

  unittest.group("obj-schema-LeaderboardListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaderboardListResponse();
      var od = new api.LeaderboardListResponse.fromJson(o.toJson());
      checkLeaderboardListResponse(od);
    });
  });

  unittest.group("obj-schema-LeaderboardScoreRank", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaderboardScoreRank();
      var od = new api.LeaderboardScoreRank.fromJson(o.toJson());
      checkLeaderboardScoreRank(od);
    });
  });

  unittest.group("obj-schema-LeaderboardScores", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaderboardScores();
      var od = new api.LeaderboardScores.fromJson(o.toJson());
      checkLeaderboardScores(od);
    });
  });

  unittest.group("obj-schema-MetagameConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetagameConfig();
      var od = new api.MetagameConfig.fromJson(o.toJson());
      checkMetagameConfig(od);
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

  unittest.group("obj-schema-PlayerAchievement", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerAchievement();
      var od = new api.PlayerAchievement.fromJson(o.toJson());
      checkPlayerAchievement(od);
    });
  });

  unittest.group("obj-schema-PlayerAchievementListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerAchievementListResponse();
      var od = new api.PlayerAchievementListResponse.fromJson(o.toJson());
      checkPlayerAchievementListResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerEvent();
      var od = new api.PlayerEvent.fromJson(o.toJson());
      checkPlayerEvent(od);
    });
  });

  unittest.group("obj-schema-PlayerEventListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerEventListResponse();
      var od = new api.PlayerEventListResponse.fromJson(o.toJson());
      checkPlayerEventListResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerExperienceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerExperienceInfo();
      var od = new api.PlayerExperienceInfo.fromJson(o.toJson());
      checkPlayerExperienceInfo(od);
    });
  });

  unittest.group("obj-schema-PlayerLeaderboardScore", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerLeaderboardScore();
      var od = new api.PlayerLeaderboardScore.fromJson(o.toJson());
      checkPlayerLeaderboardScore(od);
    });
  });

  unittest.group("obj-schema-PlayerLeaderboardScoreListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerLeaderboardScoreListResponse();
      var od = new api.PlayerLeaderboardScoreListResponse.fromJson(o.toJson());
      checkPlayerLeaderboardScoreListResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerLevel();
      var od = new api.PlayerLevel.fromJson(o.toJson());
      checkPlayerLevel(od);
    });
  });

  unittest.group("obj-schema-PlayerListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerListResponse();
      var od = new api.PlayerListResponse.fromJson(o.toJson());
      checkPlayerListResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerScore", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScore();
      var od = new api.PlayerScore.fromJson(o.toJson());
      checkPlayerScore(od);
    });
  });

  unittest.group("obj-schema-PlayerScoreListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreListResponse();
      var od = new api.PlayerScoreListResponse.fromJson(o.toJson());
      checkPlayerScoreListResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerScoreResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreResponse();
      var od = new api.PlayerScoreResponse.fromJson(o.toJson());
      checkPlayerScoreResponse(od);
    });
  });

  unittest.group("obj-schema-PlayerScoreSubmissionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreSubmissionList();
      var od = new api.PlayerScoreSubmissionList.fromJson(o.toJson());
      checkPlayerScoreSubmissionList(od);
    });
  });

  unittest.group("obj-schema-ProfileSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildProfileSettings();
      var od = new api.ProfileSettings.fromJson(o.toJson());
      checkProfileSettings(od);
    });
  });

  unittest.group("obj-schema-RevisionCheckResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRevisionCheckResponse();
      var od = new api.RevisionCheckResponse.fromJson(o.toJson());
      checkRevisionCheckResponse(od);
    });
  });

  unittest.group("obj-schema-ScoreSubmission", () {
    unittest.test("to-json--from-json", () {
      var o = buildScoreSubmission();
      var od = new api.ScoreSubmission.fromJson(o.toJson());
      checkScoreSubmission(od);
    });
  });

  unittest.group("obj-schema-Snapshot", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshot();
      var od = new api.Snapshot.fromJson(o.toJson());
      checkSnapshot(od);
    });
  });

  unittest.group("obj-schema-SnapshotImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshotImage();
      var od = new api.SnapshotImage.fromJson(o.toJson());
      checkSnapshotImage(od);
    });
  });

  unittest.group("obj-schema-SnapshotListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshotListResponse();
      var od = new api.SnapshotListResponse.fromJson(o.toJson());
      checkSnapshotListResponse(od);
    });
  });

  unittest.group("obj-schema-StatsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatsResponse();
      var od = new api.StatsResponse.fromJson(o.toJson());
      checkStatsResponse(od);
    });
  });

  unittest.group("resource-AchievementDefinitionsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AchievementDefinitionsResourceApi res =
          new api.GamesApi(mock).achievementDefinitions;
      var arg_maxResults = 42;
      var arg_language = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("games/v1/achievements"));
        pathOffset += 21;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildAchievementDefinitionsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              maxResults: arg_maxResults,
              language: arg_language,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementDefinitionsListResponse(response);
      })));
    });
  });

  unittest.group("resource-AchievementsResourceApi", () {
    unittest.test("method--increment", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
      var arg_achievementId = "foo";
      var arg_stepsToIncrement = 42;
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/achievements/"));
        pathOffset += 22;
        index = path.indexOf("/increment", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/increment"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["stepsToIncrement"].first),
            unittest.equals(arg_stepsToIncrement));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAchievementIncrementResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .increment(arg_achievementId, arg_stepsToIncrement,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementIncrementResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
      var arg_playerId = "foo";
      var arg_state = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("games/v1/players/"));
        pathOffset += 17;
        index = path.indexOf("/achievements", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/achievements"));
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
        unittest.expect(queryMap["state"].first, unittest.equals(arg_state));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerAchievementListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_playerId,
              state: arg_state,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerAchievementListResponse(response);
      })));
    });

    unittest.test("method--reveal", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/achievements/"));
        pathOffset += 22;
        index = path.indexOf("/reveal", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/reveal"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildAchievementRevealResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reveal(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementRevealResponse(response);
      })));
    });

    unittest.test("method--setStepsAtLeast", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
      var arg_achievementId = "foo";
      var arg_steps = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/achievements/"));
        pathOffset += 22;
        index = path.indexOf("/setStepsAtLeast", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/setStepsAtLeast"));
        pathOffset += 16;

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
        unittest.expect(core.int.parse(queryMap["steps"].first),
            unittest.equals(arg_steps));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildAchievementSetStepsAtLeastResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setStepsAtLeast(arg_achievementId, arg_steps, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementSetStepsAtLeastResponse(response);
      })));
    });

    unittest.test("method--unlock", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/achievements/"));
        pathOffset += 22;
        index = path.indexOf("/unlock", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/unlock"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildAchievementUnlockResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unlock(arg_achievementId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementUnlockResponse(response);
      })));
    });

    unittest.test("method--updateMultiple", () {
      var mock = new HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesApi(mock).achievements;
      var arg_request = buildAchievementUpdateMultipleRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AchievementUpdateMultipleRequest.fromJson(json);
        checkAchievementUpdateMultipleRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 36),
            unittest.equals("games/v1/achievements/updateMultiple"));
        pathOffset += 36;

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
        var resp =
            convert.json.encode(buildAchievementUpdateMultipleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateMultiple(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAchievementUpdateMultipleResponse(response);
      })));
    });
  });

  unittest.group("resource-ApplicationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res = new api.GamesApi(mock).applications;
      var arg_applicationId = "foo";
      var arg_language = "foo";
      var arg_platformType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/applications/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(
            queryMap["platformType"].first, unittest.equals(arg_platformType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_applicationId,
              language: arg_language,
              platformType: arg_platformType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });

    unittest.test("method--played", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res = new api.GamesApi(mock).applications;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("games/v1/applications/played"));
        pathOffset += 28;

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
      res.played($fields: arg_$fields).then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--verify", () {
      var mock = new HttpServerMock();
      api.ApplicationsResourceApi res = new api.GamesApi(mock).applications;
      var arg_applicationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/applications/"));
        pathOffset += 22;
        index = path.indexOf("/verify", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/verify"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildApplicationVerifyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_applicationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplicationVerifyResponse(response);
      })));
    });
  });

  unittest.group("resource-EventsResourceApi", () {
    unittest.test("method--listByPlayer", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesApi(mock).events;
      var arg_pageToken = "foo";
      var arg_language = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("games/v1/events"));
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
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerEventListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listByPlayer(
              pageToken: arg_pageToken,
              language: arg_language,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerEventListResponse(response);
      })));
    });

    unittest.test("method--listDefinitions", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesApi(mock).events;
      var arg_language = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("games/v1/eventDefinitions"));
        pathOffset += 25;

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEventDefinitionListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listDefinitions(
              language: arg_language,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventDefinitionListResponse(response);
      })));
    });

    unittest.test("method--record", () {
      var mock = new HttpServerMock();
      api.EventsResourceApi res = new api.GamesApi(mock).events;
      var arg_request = buildEventRecordRequest();
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EventRecordRequest.fromJson(json);
        checkEventRecordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("games/v1/events"));
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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEventUpdateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .record(arg_request, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventUpdateResponse(response);
      })));
    });
  });

  unittest.group("resource-LeaderboardsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.LeaderboardsResourceApi res = new api.GamesApi(mock).leaderboards;
      var arg_leaderboardId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/leaderboards/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaderboard());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_leaderboardId, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboard(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.LeaderboardsResourceApi res = new api.GamesApi(mock).leaderboards;
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("games/v1/leaderboards"));
        pathOffset += 21;

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
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaderboardListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardListResponse(response);
      })));
    });
  });

  unittest.group("resource-MetagameResourceApi", () {
    unittest.test("method--getMetagameConfig", () {
      var mock = new HttpServerMock();
      api.MetagameResourceApi res = new api.GamesApi(mock).metagame;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("games/v1/metagameConfig"));
        pathOffset += 23;

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
        var resp = convert.json.encode(buildMetagameConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetagameConfig($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetagameConfig(response);
      })));
    });

    unittest.test("method--listCategoriesByPlayer", () {
      var mock = new HttpServerMock();
      api.MetagameResourceApi res = new api.GamesApi(mock).metagame;
      var arg_playerId = "foo";
      var arg_collection = "foo";
      var arg_language = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("games/v1/players/"));
        pathOffset += 17;
        index = path.indexOf("/categories/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/categories/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCategoryListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listCategoriesByPlayer(arg_playerId, arg_collection,
              language: arg_language,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCategoryListResponse(response);
      })));
    });
  });

  unittest.group("resource-PlayersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PlayersResourceApi res = new api.GamesApi(mock).players;
      var arg_playerId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("games/v1/players/"));
        pathOffset += 17;
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
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_playerId, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayer(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PlayersResourceApi res = new api.GamesApi(mock).players;
      var arg_collection = "foo";
      var arg_pageToken = "foo";
      var arg_maxResults = 42;
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("games/v1/players/me/players/"));
        pathOffset += 28;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

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
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_collection,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerListResponse(response);
      })));
    });
  });

  unittest.group("resource-RevisionsResourceApi", () {
    unittest.test("method--check", () {
      var mock = new HttpServerMock();
      api.RevisionsResourceApi res = new api.GamesApi(mock).revisions;
      var arg_clientRevision = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("games/v1/revisions/check"));
        pathOffset += 24;

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
        unittest.expect(queryMap["clientRevision"].first,
            unittest.equals(arg_clientRevision));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRevisionCheckResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .check(arg_clientRevision, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRevisionCheckResponse(response);
      })));
    });
  });

  unittest.group("resource-ScoresResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesApi(mock).scores;
      var arg_playerId = "foo";
      var arg_leaderboardId = "foo";
      var arg_timeSpan = "foo";
      var arg_maxResults = 42;
      var arg_includeRankType = "foo";
      var arg_pageToken = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("games/v1/players/"));
        pathOffset += 17;
        index = path.indexOf("/leaderboards/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/leaderboards/"));
        pathOffset += 14;
        index = path.indexOf("/scores/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/scores/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_timeSpan"));

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["includeRankType"].first,
            unittest.equals(arg_includeRankType));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildPlayerLeaderboardScoreListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_playerId, arg_leaderboardId, arg_timeSpan,
              maxResults: arg_maxResults,
              includeRankType: arg_includeRankType,
              pageToken: arg_pageToken,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerLeaderboardScoreListResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesApi(mock).scores;
      var arg_leaderboardId = "foo";
      var arg_collection = "foo";
      var arg_timeSpan = "foo";
      var arg_pageToken = "foo";
      var arg_language = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/leaderboards/"));
        pathOffset += 22;
        index = path.indexOf("/scores/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/scores/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

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
            queryMap["timeSpan"].first, unittest.equals(arg_timeSpan));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaderboardScores());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_leaderboardId, arg_collection, arg_timeSpan,
              pageToken: arg_pageToken,
              language: arg_language,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardScores(response);
      })));
    });

    unittest.test("method--listWindow", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesApi(mock).scores;
      var arg_leaderboardId = "foo";
      var arg_collection = "foo";
      var arg_timeSpan = "foo";
      var arg_pageToken = "foo";
      var arg_resultsAbove = 42;
      var arg_returnTopIfAbsent = true;
      var arg_language = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/leaderboards/"));
        pathOffset += 22;
        index = path.indexOf("/window/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/window/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

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
            queryMap["timeSpan"].first, unittest.equals(arg_timeSpan));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["resultsAbove"].first),
            unittest.equals(arg_resultsAbove));
        unittest.expect(queryMap["returnTopIfAbsent"].first,
            unittest.equals("$arg_returnTopIfAbsent"));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaderboardScores());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listWindow(arg_leaderboardId, arg_collection, arg_timeSpan,
              pageToken: arg_pageToken,
              resultsAbove: arg_resultsAbove,
              returnTopIfAbsent: arg_returnTopIfAbsent,
              language: arg_language,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaderboardScores(response);
      })));
    });

    unittest.test("method--submit", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesApi(mock).scores;
      var arg_leaderboardId = "foo";
      var arg_score = "foo";
      var arg_scoreTag = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("games/v1/leaderboards/"));
        pathOffset += 22;
        index = path.indexOf("/scores", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/scores"));
        pathOffset += 7;

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
        unittest.expect(queryMap["score"].first, unittest.equals(arg_score));
        unittest.expect(
            queryMap["scoreTag"].first, unittest.equals(arg_scoreTag));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerScoreResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submit(arg_leaderboardId, arg_score,
              scoreTag: arg_scoreTag,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerScoreResponse(response);
      })));
    });

    unittest.test("method--submitMultiple", () {
      var mock = new HttpServerMock();
      api.ScoresResourceApi res = new api.GamesApi(mock).scores;
      var arg_request = buildPlayerScoreSubmissionList();
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PlayerScoreSubmissionList.fromJson(json);
        checkPlayerScoreSubmissionList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("games/v1/leaderboards/scores"));
        pathOffset += 28;

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPlayerScoreListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .submitMultiple(arg_request,
              language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlayerScoreListResponse(response);
      })));
    });
  });

  unittest.group("resource-SnapshotsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.GamesApi(mock).snapshots;
      var arg_snapshotId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("games/v1/snapshots/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_snapshotId"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_snapshotId, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.GamesApi(mock).snapshots;
      var arg_playerId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("games/v1/players/"));
        pathOffset += 17;
        index = path.indexOf("/snapshots", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshotListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_playerId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshotListResponse(response);
      })));
    });
  });

  unittest.group("resource-StatsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.StatsResourceApi res = new api.GamesApi(mock).stats;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("games/v1/stats"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildStatsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkStatsResponse(response);
      })));
    });
  });
}
