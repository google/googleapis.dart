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

import 'package:googleapis/games/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAchievementDefinition = 0;
api.AchievementDefinition buildAchievementDefinition() {
  final o = api.AchievementDefinition();
  buildCounterAchievementDefinition++;
  if (buildCounterAchievementDefinition < 3) {
    o.achievementType = 'foo';
    o.description = 'foo';
    o.experiencePoints = 'foo';
    o.formattedTotalSteps = 'foo';
    o.id = 'foo';
    o.initialState = 'foo';
    o.isRevealedIconUrlDefault = true;
    o.isUnlockedIconUrlDefault = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.revealedIconUrl = 'foo';
    o.totalSteps = 42;
    o.unlockedIconUrl = 'foo';
  }
  buildCounterAchievementDefinition--;
  return o;
}

void checkAchievementDefinition(api.AchievementDefinition o) {
  buildCounterAchievementDefinition++;
  if (buildCounterAchievementDefinition < 3) {
    unittest.expect(
      o.achievementType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experiencePoints!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedTotalSteps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialState!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRevealedIconUrlDefault!, unittest.isTrue);
    unittest.expect(o.isUnlockedIconUrlDefault!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revealedIconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSteps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.unlockedIconUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAchievementDefinition--;
}

core.List<api.AchievementDefinition> buildUnnamed3558() {
  final o = <api.AchievementDefinition>[];
  o.add(buildAchievementDefinition());
  o.add(buildAchievementDefinition());
  return o;
}

void checkUnnamed3558(core.List<api.AchievementDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementDefinition(o[0]);
  checkAchievementDefinition(o[1]);
}

core.int buildCounterAchievementDefinitionsListResponse = 0;
api.AchievementDefinitionsListResponse
    buildAchievementDefinitionsListResponse() {
  final o = api.AchievementDefinitionsListResponse();
  buildCounterAchievementDefinitionsListResponse++;
  if (buildCounterAchievementDefinitionsListResponse < 3) {
    o.items = buildUnnamed3558();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAchievementDefinitionsListResponse--;
  return o;
}

void checkAchievementDefinitionsListResponse(
    api.AchievementDefinitionsListResponse o) {
  buildCounterAchievementDefinitionsListResponse++;
  if (buildCounterAchievementDefinitionsListResponse < 3) {
    checkUnnamed3558(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAchievementDefinitionsListResponse--;
}

core.int buildCounterAchievementIncrementResponse = 0;
api.AchievementIncrementResponse buildAchievementIncrementResponse() {
  final o = api.AchievementIncrementResponse();
  buildCounterAchievementIncrementResponse++;
  if (buildCounterAchievementIncrementResponse < 3) {
    o.currentSteps = 42;
    o.kind = 'foo';
    o.newlyUnlocked = true;
  }
  buildCounterAchievementIncrementResponse--;
  return o;
}

void checkAchievementIncrementResponse(api.AchievementIncrementResponse o) {
  buildCounterAchievementIncrementResponse++;
  if (buildCounterAchievementIncrementResponse < 3) {
    unittest.expect(
      o.currentSteps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.newlyUnlocked!, unittest.isTrue);
  }
  buildCounterAchievementIncrementResponse--;
}

core.int buildCounterAchievementRevealResponse = 0;
api.AchievementRevealResponse buildAchievementRevealResponse() {
  final o = api.AchievementRevealResponse();
  buildCounterAchievementRevealResponse++;
  if (buildCounterAchievementRevealResponse < 3) {
    o.currentState = 'foo';
    o.kind = 'foo';
  }
  buildCounterAchievementRevealResponse--;
  return o;
}

void checkAchievementRevealResponse(api.AchievementRevealResponse o) {
  buildCounterAchievementRevealResponse++;
  if (buildCounterAchievementRevealResponse < 3) {
    unittest.expect(
      o.currentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAchievementRevealResponse--;
}

core.int buildCounterAchievementSetStepsAtLeastResponse = 0;
api.AchievementSetStepsAtLeastResponse
    buildAchievementSetStepsAtLeastResponse() {
  final o = api.AchievementSetStepsAtLeastResponse();
  buildCounterAchievementSetStepsAtLeastResponse++;
  if (buildCounterAchievementSetStepsAtLeastResponse < 3) {
    o.currentSteps = 42;
    o.kind = 'foo';
    o.newlyUnlocked = true;
  }
  buildCounterAchievementSetStepsAtLeastResponse--;
  return o;
}

void checkAchievementSetStepsAtLeastResponse(
    api.AchievementSetStepsAtLeastResponse o) {
  buildCounterAchievementSetStepsAtLeastResponse++;
  if (buildCounterAchievementSetStepsAtLeastResponse < 3) {
    unittest.expect(
      o.currentSteps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.newlyUnlocked!, unittest.isTrue);
  }
  buildCounterAchievementSetStepsAtLeastResponse--;
}

core.int buildCounterAchievementUnlockResponse = 0;
api.AchievementUnlockResponse buildAchievementUnlockResponse() {
  final o = api.AchievementUnlockResponse();
  buildCounterAchievementUnlockResponse++;
  if (buildCounterAchievementUnlockResponse < 3) {
    o.kind = 'foo';
    o.newlyUnlocked = true;
  }
  buildCounterAchievementUnlockResponse--;
  return o;
}

void checkAchievementUnlockResponse(api.AchievementUnlockResponse o) {
  buildCounterAchievementUnlockResponse++;
  if (buildCounterAchievementUnlockResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.newlyUnlocked!, unittest.isTrue);
  }
  buildCounterAchievementUnlockResponse--;
}

core.List<api.AchievementUpdateRequest> buildUnnamed3559() {
  final o = <api.AchievementUpdateRequest>[];
  o.add(buildAchievementUpdateRequest());
  o.add(buildAchievementUpdateRequest());
  return o;
}

void checkUnnamed3559(core.List<api.AchievementUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementUpdateRequest(o[0]);
  checkAchievementUpdateRequest(o[1]);
}

core.int buildCounterAchievementUpdateMultipleRequest = 0;
api.AchievementUpdateMultipleRequest buildAchievementUpdateMultipleRequest() {
  final o = api.AchievementUpdateMultipleRequest();
  buildCounterAchievementUpdateMultipleRequest++;
  if (buildCounterAchievementUpdateMultipleRequest < 3) {
    o.kind = 'foo';
    o.updates = buildUnnamed3559();
  }
  buildCounterAchievementUpdateMultipleRequest--;
  return o;
}

void checkAchievementUpdateMultipleRequest(
    api.AchievementUpdateMultipleRequest o) {
  buildCounterAchievementUpdateMultipleRequest++;
  if (buildCounterAchievementUpdateMultipleRequest < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3559(o.updates!);
  }
  buildCounterAchievementUpdateMultipleRequest--;
}

core.List<api.AchievementUpdateResponse> buildUnnamed3560() {
  final o = <api.AchievementUpdateResponse>[];
  o.add(buildAchievementUpdateResponse());
  o.add(buildAchievementUpdateResponse());
  return o;
}

void checkUnnamed3560(core.List<api.AchievementUpdateResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementUpdateResponse(o[0]);
  checkAchievementUpdateResponse(o[1]);
}

core.int buildCounterAchievementUpdateMultipleResponse = 0;
api.AchievementUpdateMultipleResponse buildAchievementUpdateMultipleResponse() {
  final o = api.AchievementUpdateMultipleResponse();
  buildCounterAchievementUpdateMultipleResponse++;
  if (buildCounterAchievementUpdateMultipleResponse < 3) {
    o.kind = 'foo';
    o.updatedAchievements = buildUnnamed3560();
  }
  buildCounterAchievementUpdateMultipleResponse--;
  return o;
}

void checkAchievementUpdateMultipleResponse(
    api.AchievementUpdateMultipleResponse o) {
  buildCounterAchievementUpdateMultipleResponse++;
  if (buildCounterAchievementUpdateMultipleResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3560(o.updatedAchievements!);
  }
  buildCounterAchievementUpdateMultipleResponse--;
}

core.int buildCounterAchievementUpdateRequest = 0;
api.AchievementUpdateRequest buildAchievementUpdateRequest() {
  final o = api.AchievementUpdateRequest();
  buildCounterAchievementUpdateRequest++;
  if (buildCounterAchievementUpdateRequest < 3) {
    o.achievementId = 'foo';
    o.incrementPayload = buildGamesAchievementIncrement();
    o.kind = 'foo';
    o.setStepsAtLeastPayload = buildGamesAchievementSetStepsAtLeast();
    o.updateType = 'foo';
  }
  buildCounterAchievementUpdateRequest--;
  return o;
}

void checkAchievementUpdateRequest(api.AchievementUpdateRequest o) {
  buildCounterAchievementUpdateRequest++;
  if (buildCounterAchievementUpdateRequest < 3) {
    unittest.expect(
      o.achievementId!,
      unittest.equals('foo'),
    );
    checkGamesAchievementIncrement(o.incrementPayload!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkGamesAchievementSetStepsAtLeast(o.setStepsAtLeastPayload!);
    unittest.expect(
      o.updateType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAchievementUpdateRequest--;
}

core.int buildCounterAchievementUpdateResponse = 0;
api.AchievementUpdateResponse buildAchievementUpdateResponse() {
  final o = api.AchievementUpdateResponse();
  buildCounterAchievementUpdateResponse++;
  if (buildCounterAchievementUpdateResponse < 3) {
    o.achievementId = 'foo';
    o.currentState = 'foo';
    o.currentSteps = 42;
    o.kind = 'foo';
    o.newlyUnlocked = true;
    o.updateOccurred = true;
  }
  buildCounterAchievementUpdateResponse--;
  return o;
}

void checkAchievementUpdateResponse(api.AchievementUpdateResponse o) {
  buildCounterAchievementUpdateResponse++;
  if (buildCounterAchievementUpdateResponse < 3) {
    unittest.expect(
      o.achievementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentSteps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.newlyUnlocked!, unittest.isTrue);
    unittest.expect(o.updateOccurred!, unittest.isTrue);
  }
  buildCounterAchievementUpdateResponse--;
}

core.List<api.ImageAsset> buildUnnamed3561() {
  final o = <api.ImageAsset>[];
  o.add(buildImageAsset());
  o.add(buildImageAsset());
  return o;
}

void checkUnnamed3561(core.List<api.ImageAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageAsset(o[0]);
  checkImageAsset(o[1]);
}

core.List<core.String> buildUnnamed3562() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3562(core.List<core.String> o) {
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

core.List<api.Instance> buildUnnamed3563() {
  final o = <api.Instance>[];
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

void checkUnnamed3563(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.achievementCount = 42;
    o.assets = buildUnnamed3561();
    o.author = 'foo';
    o.category = buildApplicationCategory();
    o.description = 'foo';
    o.enabledFeatures = buildUnnamed3562();
    o.id = 'foo';
    o.instances = buildUnnamed3563();
    o.kind = 'foo';
    o.lastUpdatedTimestamp = 'foo';
    o.leaderboardCount = 42;
    o.name = 'foo';
    o.themeColor = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(
      o.achievementCount!,
      unittest.equals(42),
    );
    checkUnnamed3561(o.assets!);
    unittest.expect(
      o.author!,
      unittest.equals('foo'),
    );
    checkApplicationCategory(o.category!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed3562(o.enabledFeatures!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed3563(o.instances!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdatedTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leaderboardCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.themeColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationCategory = 0;
api.ApplicationCategory buildApplicationCategory() {
  final o = api.ApplicationCategory();
  buildCounterApplicationCategory++;
  if (buildCounterApplicationCategory < 3) {
    o.kind = 'foo';
    o.primary = 'foo';
    o.secondary = 'foo';
  }
  buildCounterApplicationCategory--;
  return o;
}

void checkApplicationCategory(api.ApplicationCategory o) {
  buildCounterApplicationCategory++;
  if (buildCounterApplicationCategory < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primary!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondary!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationCategory--;
}

core.int buildCounterApplicationVerifyResponse = 0;
api.ApplicationVerifyResponse buildApplicationVerifyResponse() {
  final o = api.ApplicationVerifyResponse();
  buildCounterApplicationVerifyResponse++;
  if (buildCounterApplicationVerifyResponse < 3) {
    o.alternatePlayerId = 'foo';
    o.kind = 'foo';
    o.playerId = 'foo';
  }
  buildCounterApplicationVerifyResponse--;
  return o;
}

void checkApplicationVerifyResponse(api.ApplicationVerifyResponse o) {
  buildCounterApplicationVerifyResponse++;
  if (buildCounterApplicationVerifyResponse < 3) {
    unittest.expect(
      o.alternatePlayerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationVerifyResponse--;
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.category = 'foo';
    o.experiencePoints = 'foo';
    o.kind = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experiencePoints!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategory--;
}

core.List<api.Category> buildUnnamed3564() {
  final o = <api.Category>[];
  o.add(buildCategory());
  o.add(buildCategory());
  return o;
}

void checkUnnamed3564(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.int buildCounterCategoryListResponse = 0;
api.CategoryListResponse buildCategoryListResponse() {
  final o = api.CategoryListResponse();
  buildCounterCategoryListResponse++;
  if (buildCounterCategoryListResponse < 3) {
    o.items = buildUnnamed3564();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCategoryListResponse--;
  return o;
}

void checkCategoryListResponse(api.CategoryListResponse o) {
  buildCounterCategoryListResponse++;
  if (buildCounterCategoryListResponse < 3) {
    checkUnnamed3564(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategoryListResponse--;
}

core.int buildCounterEndPoint = 0;
api.EndPoint buildEndPoint() {
  final o = api.EndPoint();
  buildCounterEndPoint++;
  if (buildCounterEndPoint < 3) {
    o.url = 'foo';
  }
  buildCounterEndPoint--;
  return o;
}

void checkEndPoint(api.EndPoint o) {
  buildCounterEndPoint++;
  if (buildCounterEndPoint < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndPoint--;
}

core.int buildCounterEventBatchRecordFailure = 0;
api.EventBatchRecordFailure buildEventBatchRecordFailure() {
  final o = api.EventBatchRecordFailure();
  buildCounterEventBatchRecordFailure++;
  if (buildCounterEventBatchRecordFailure < 3) {
    o.failureCause = 'foo';
    o.kind = 'foo';
    o.range = buildEventPeriodRange();
  }
  buildCounterEventBatchRecordFailure--;
  return o;
}

void checkEventBatchRecordFailure(api.EventBatchRecordFailure o) {
  buildCounterEventBatchRecordFailure++;
  if (buildCounterEventBatchRecordFailure < 3) {
    unittest.expect(
      o.failureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkEventPeriodRange(o.range!);
  }
  buildCounterEventBatchRecordFailure--;
}

core.int buildCounterEventChild = 0;
api.EventChild buildEventChild() {
  final o = api.EventChild();
  buildCounterEventChild++;
  if (buildCounterEventChild < 3) {
    o.childId = 'foo';
    o.kind = 'foo';
  }
  buildCounterEventChild--;
  return o;
}

void checkEventChild(api.EventChild o) {
  buildCounterEventChild++;
  if (buildCounterEventChild < 3) {
    unittest.expect(
      o.childId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventChild--;
}

core.List<api.EventChild> buildUnnamed3565() {
  final o = <api.EventChild>[];
  o.add(buildEventChild());
  o.add(buildEventChild());
  return o;
}

void checkUnnamed3565(core.List<api.EventChild> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventChild(o[0]);
  checkEventChild(o[1]);
}

core.int buildCounterEventDefinition = 0;
api.EventDefinition buildEventDefinition() {
  final o = api.EventDefinition();
  buildCounterEventDefinition++;
  if (buildCounterEventDefinition < 3) {
    o.childEvents = buildUnnamed3565();
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.imageUrl = 'foo';
    o.isDefaultImageUrl = true;
    o.kind = 'foo';
    o.visibility = 'foo';
  }
  buildCounterEventDefinition--;
  return o;
}

void checkEventDefinition(api.EventDefinition o) {
  buildCounterEventDefinition++;
  if (buildCounterEventDefinition < 3) {
    checkUnnamed3565(o.childEvents!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefaultImageUrl!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventDefinition--;
}

core.List<api.EventDefinition> buildUnnamed3566() {
  final o = <api.EventDefinition>[];
  o.add(buildEventDefinition());
  o.add(buildEventDefinition());
  return o;
}

void checkUnnamed3566(core.List<api.EventDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventDefinition(o[0]);
  checkEventDefinition(o[1]);
}

core.int buildCounterEventDefinitionListResponse = 0;
api.EventDefinitionListResponse buildEventDefinitionListResponse() {
  final o = api.EventDefinitionListResponse();
  buildCounterEventDefinitionListResponse++;
  if (buildCounterEventDefinitionListResponse < 3) {
    o.items = buildUnnamed3566();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterEventDefinitionListResponse--;
  return o;
}

void checkEventDefinitionListResponse(api.EventDefinitionListResponse o) {
  buildCounterEventDefinitionListResponse++;
  if (buildCounterEventDefinitionListResponse < 3) {
    checkUnnamed3566(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventDefinitionListResponse--;
}

core.int buildCounterEventPeriodRange = 0;
api.EventPeriodRange buildEventPeriodRange() {
  final o = api.EventPeriodRange();
  buildCounterEventPeriodRange++;
  if (buildCounterEventPeriodRange < 3) {
    o.kind = 'foo';
    o.periodEndMillis = 'foo';
    o.periodStartMillis = 'foo';
  }
  buildCounterEventPeriodRange--;
  return o;
}

void checkEventPeriodRange(api.EventPeriodRange o) {
  buildCounterEventPeriodRange++;
  if (buildCounterEventPeriodRange < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.periodEndMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.periodStartMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventPeriodRange--;
}

core.List<api.EventUpdateRequest> buildUnnamed3567() {
  final o = <api.EventUpdateRequest>[];
  o.add(buildEventUpdateRequest());
  o.add(buildEventUpdateRequest());
  return o;
}

void checkUnnamed3567(core.List<api.EventUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventUpdateRequest(o[0]);
  checkEventUpdateRequest(o[1]);
}

core.int buildCounterEventPeriodUpdate = 0;
api.EventPeriodUpdate buildEventPeriodUpdate() {
  final o = api.EventPeriodUpdate();
  buildCounterEventPeriodUpdate++;
  if (buildCounterEventPeriodUpdate < 3) {
    o.kind = 'foo';
    o.timePeriod = buildEventPeriodRange();
    o.updates = buildUnnamed3567();
  }
  buildCounterEventPeriodUpdate--;
  return o;
}

void checkEventPeriodUpdate(api.EventPeriodUpdate o) {
  buildCounterEventPeriodUpdate++;
  if (buildCounterEventPeriodUpdate < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkEventPeriodRange(o.timePeriod!);
    checkUnnamed3567(o.updates!);
  }
  buildCounterEventPeriodUpdate--;
}

core.int buildCounterEventRecordFailure = 0;
api.EventRecordFailure buildEventRecordFailure() {
  final o = api.EventRecordFailure();
  buildCounterEventRecordFailure++;
  if (buildCounterEventRecordFailure < 3) {
    o.eventId = 'foo';
    o.failureCause = 'foo';
    o.kind = 'foo';
  }
  buildCounterEventRecordFailure--;
  return o;
}

void checkEventRecordFailure(api.EventRecordFailure o) {
  buildCounterEventRecordFailure++;
  if (buildCounterEventRecordFailure < 3) {
    unittest.expect(
      o.eventId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCause!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventRecordFailure--;
}

core.List<api.EventPeriodUpdate> buildUnnamed3568() {
  final o = <api.EventPeriodUpdate>[];
  o.add(buildEventPeriodUpdate());
  o.add(buildEventPeriodUpdate());
  return o;
}

void checkUnnamed3568(core.List<api.EventPeriodUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventPeriodUpdate(o[0]);
  checkEventPeriodUpdate(o[1]);
}

core.int buildCounterEventRecordRequest = 0;
api.EventRecordRequest buildEventRecordRequest() {
  final o = api.EventRecordRequest();
  buildCounterEventRecordRequest++;
  if (buildCounterEventRecordRequest < 3) {
    o.currentTimeMillis = 'foo';
    o.kind = 'foo';
    o.requestId = 'foo';
    o.timePeriods = buildUnnamed3568();
  }
  buildCounterEventRecordRequest--;
  return o;
}

void checkEventRecordRequest(api.EventRecordRequest o) {
  buildCounterEventRecordRequest++;
  if (buildCounterEventRecordRequest < 3) {
    unittest.expect(
      o.currentTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkUnnamed3568(o.timePeriods!);
  }
  buildCounterEventRecordRequest--;
}

core.int buildCounterEventUpdateRequest = 0;
api.EventUpdateRequest buildEventUpdateRequest() {
  final o = api.EventUpdateRequest();
  buildCounterEventUpdateRequest++;
  if (buildCounterEventUpdateRequest < 3) {
    o.definitionId = 'foo';
    o.kind = 'foo';
    o.updateCount = 'foo';
  }
  buildCounterEventUpdateRequest--;
  return o;
}

void checkEventUpdateRequest(api.EventUpdateRequest o) {
  buildCounterEventUpdateRequest++;
  if (buildCounterEventUpdateRequest < 3) {
    unittest.expect(
      o.definitionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventUpdateRequest--;
}

core.List<api.EventBatchRecordFailure> buildUnnamed3569() {
  final o = <api.EventBatchRecordFailure>[];
  o.add(buildEventBatchRecordFailure());
  o.add(buildEventBatchRecordFailure());
  return o;
}

void checkUnnamed3569(core.List<api.EventBatchRecordFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventBatchRecordFailure(o[0]);
  checkEventBatchRecordFailure(o[1]);
}

core.List<api.EventRecordFailure> buildUnnamed3570() {
  final o = <api.EventRecordFailure>[];
  o.add(buildEventRecordFailure());
  o.add(buildEventRecordFailure());
  return o;
}

void checkUnnamed3570(core.List<api.EventRecordFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventRecordFailure(o[0]);
  checkEventRecordFailure(o[1]);
}

core.List<api.PlayerEvent> buildUnnamed3571() {
  final o = <api.PlayerEvent>[];
  o.add(buildPlayerEvent());
  o.add(buildPlayerEvent());
  return o;
}

void checkUnnamed3571(core.List<api.PlayerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerEvent(o[0]);
  checkPlayerEvent(o[1]);
}

core.int buildCounterEventUpdateResponse = 0;
api.EventUpdateResponse buildEventUpdateResponse() {
  final o = api.EventUpdateResponse();
  buildCounterEventUpdateResponse++;
  if (buildCounterEventUpdateResponse < 3) {
    o.batchFailures = buildUnnamed3569();
    o.eventFailures = buildUnnamed3570();
    o.kind = 'foo';
    o.playerEvents = buildUnnamed3571();
  }
  buildCounterEventUpdateResponse--;
  return o;
}

void checkEventUpdateResponse(api.EventUpdateResponse o) {
  buildCounterEventUpdateResponse++;
  if (buildCounterEventUpdateResponse < 3) {
    checkUnnamed3569(o.batchFailures!);
    checkUnnamed3570(o.eventFailures!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3571(o.playerEvents!);
  }
  buildCounterEventUpdateResponse--;
}

core.int buildCounterGamesAchievementIncrement = 0;
api.GamesAchievementIncrement buildGamesAchievementIncrement() {
  final o = api.GamesAchievementIncrement();
  buildCounterGamesAchievementIncrement++;
  if (buildCounterGamesAchievementIncrement < 3) {
    o.kind = 'foo';
    o.requestId = 'foo';
    o.steps = 42;
  }
  buildCounterGamesAchievementIncrement--;
  return o;
}

void checkGamesAchievementIncrement(api.GamesAchievementIncrement o) {
  buildCounterGamesAchievementIncrement++;
  if (buildCounterGamesAchievementIncrement < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.steps!,
      unittest.equals(42),
    );
  }
  buildCounterGamesAchievementIncrement--;
}

core.int buildCounterGamesAchievementSetStepsAtLeast = 0;
api.GamesAchievementSetStepsAtLeast buildGamesAchievementSetStepsAtLeast() {
  final o = api.GamesAchievementSetStepsAtLeast();
  buildCounterGamesAchievementSetStepsAtLeast++;
  if (buildCounterGamesAchievementSetStepsAtLeast < 3) {
    o.kind = 'foo';
    o.steps = 42;
  }
  buildCounterGamesAchievementSetStepsAtLeast--;
  return o;
}

void checkGamesAchievementSetStepsAtLeast(
    api.GamesAchievementSetStepsAtLeast o) {
  buildCounterGamesAchievementSetStepsAtLeast++;
  if (buildCounterGamesAchievementSetStepsAtLeast < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.steps!,
      unittest.equals(42),
    );
  }
  buildCounterGamesAchievementSetStepsAtLeast--;
}

core.int buildCounterImageAsset = 0;
api.ImageAsset buildImageAsset() {
  final o = api.ImageAsset();
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    o.height = 42;
    o.kind = 'foo';
    o.name = 'foo';
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterImageAsset--;
  return o;
}

void checkImageAsset(api.ImageAsset o) {
  buildCounterImageAsset++;
  if (buildCounterImageAsset < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterImageAsset--;
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.acquisitionUri = 'foo';
    o.androidInstance = buildInstanceAndroidDetails();
    o.iosInstance = buildInstanceIosDetails();
    o.kind = 'foo';
    o.name = 'foo';
    o.platformType = 'foo';
    o.realtimePlay = true;
    o.turnBasedPlay = true;
    o.webInstance = buildInstanceWebDetails();
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.acquisitionUri!,
      unittest.equals('foo'),
    );
    checkInstanceAndroidDetails(o.androidInstance!);
    checkInstanceIosDetails(o.iosInstance!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.realtimePlay!, unittest.isTrue);
    unittest.expect(o.turnBasedPlay!, unittest.isTrue);
    checkInstanceWebDetails(o.webInstance!);
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceAndroidDetails = 0;
api.InstanceAndroidDetails buildInstanceAndroidDetails() {
  final o = api.InstanceAndroidDetails();
  buildCounterInstanceAndroidDetails++;
  if (buildCounterInstanceAndroidDetails < 3) {
    o.enablePiracyCheck = true;
    o.kind = 'foo';
    o.packageName = 'foo';
    o.preferred = true;
  }
  buildCounterInstanceAndroidDetails--;
  return o;
}

void checkInstanceAndroidDetails(api.InstanceAndroidDetails o) {
  buildCounterInstanceAndroidDetails++;
  if (buildCounterInstanceAndroidDetails < 3) {
    unittest.expect(o.enablePiracyCheck!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preferred!, unittest.isTrue);
  }
  buildCounterInstanceAndroidDetails--;
}

core.int buildCounterInstanceIosDetails = 0;
api.InstanceIosDetails buildInstanceIosDetails() {
  final o = api.InstanceIosDetails();
  buildCounterInstanceIosDetails++;
  if (buildCounterInstanceIosDetails < 3) {
    o.bundleIdentifier = 'foo';
    o.itunesAppId = 'foo';
    o.kind = 'foo';
    o.preferredForIpad = true;
    o.preferredForIphone = true;
    o.supportIpad = true;
    o.supportIphone = true;
  }
  buildCounterInstanceIosDetails--;
  return o;
}

void checkInstanceIosDetails(api.InstanceIosDetails o) {
  buildCounterInstanceIosDetails++;
  if (buildCounterInstanceIosDetails < 3) {
    unittest.expect(
      o.bundleIdentifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itunesAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preferredForIpad!, unittest.isTrue);
    unittest.expect(o.preferredForIphone!, unittest.isTrue);
    unittest.expect(o.supportIpad!, unittest.isTrue);
    unittest.expect(o.supportIphone!, unittest.isTrue);
  }
  buildCounterInstanceIosDetails--;
}

core.int buildCounterInstanceWebDetails = 0;
api.InstanceWebDetails buildInstanceWebDetails() {
  final o = api.InstanceWebDetails();
  buildCounterInstanceWebDetails++;
  if (buildCounterInstanceWebDetails < 3) {
    o.kind = 'foo';
    o.launchUrl = 'foo';
    o.preferred = true;
  }
  buildCounterInstanceWebDetails--;
  return o;
}

void checkInstanceWebDetails(api.InstanceWebDetails o) {
  buildCounterInstanceWebDetails++;
  if (buildCounterInstanceWebDetails < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preferred!, unittest.isTrue);
  }
  buildCounterInstanceWebDetails--;
}

core.int buildCounterLeaderboard = 0;
api.Leaderboard buildLeaderboard() {
  final o = api.Leaderboard();
  buildCounterLeaderboard++;
  if (buildCounterLeaderboard < 3) {
    o.iconUrl = 'foo';
    o.id = 'foo';
    o.isIconUrlDefault = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.order = 'foo';
  }
  buildCounterLeaderboard--;
  return o;
}

void checkLeaderboard(api.Leaderboard o) {
  buildCounterLeaderboard++;
  if (buildCounterLeaderboard < 3) {
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isIconUrlDefault!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaderboard--;
}

core.int buildCounterLeaderboardEntry = 0;
api.LeaderboardEntry buildLeaderboardEntry() {
  final o = api.LeaderboardEntry();
  buildCounterLeaderboardEntry++;
  if (buildCounterLeaderboardEntry < 3) {
    o.formattedScore = 'foo';
    o.formattedScoreRank = 'foo';
    o.kind = 'foo';
    o.player = buildPlayer();
    o.scoreRank = 'foo';
    o.scoreTag = 'foo';
    o.scoreValue = 'foo';
    o.timeSpan = 'foo';
    o.writeTimestampMillis = 'foo';
  }
  buildCounterLeaderboardEntry--;
  return o;
}

void checkLeaderboardEntry(api.LeaderboardEntry o) {
  buildCounterLeaderboardEntry++;
  if (buildCounterLeaderboardEntry < 3) {
    unittest.expect(
      o.formattedScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedScoreRank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPlayer(o.player!);
    unittest.expect(
      o.scoreRank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeSpan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeTimestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaderboardEntry--;
}

core.List<api.Leaderboard> buildUnnamed3572() {
  final o = <api.Leaderboard>[];
  o.add(buildLeaderboard());
  o.add(buildLeaderboard());
  return o;
}

void checkUnnamed3572(core.List<api.Leaderboard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLeaderboard(o[0]);
  checkLeaderboard(o[1]);
}

core.int buildCounterLeaderboardListResponse = 0;
api.LeaderboardListResponse buildLeaderboardListResponse() {
  final o = api.LeaderboardListResponse();
  buildCounterLeaderboardListResponse++;
  if (buildCounterLeaderboardListResponse < 3) {
    o.items = buildUnnamed3572();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterLeaderboardListResponse--;
  return o;
}

void checkLeaderboardListResponse(api.LeaderboardListResponse o) {
  buildCounterLeaderboardListResponse++;
  if (buildCounterLeaderboardListResponse < 3) {
    checkUnnamed3572(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaderboardListResponse--;
}

core.int buildCounterLeaderboardScoreRank = 0;
api.LeaderboardScoreRank buildLeaderboardScoreRank() {
  final o = api.LeaderboardScoreRank();
  buildCounterLeaderboardScoreRank++;
  if (buildCounterLeaderboardScoreRank < 3) {
    o.formattedNumScores = 'foo';
    o.formattedRank = 'foo';
    o.kind = 'foo';
    o.numScores = 'foo';
    o.rank = 'foo';
  }
  buildCounterLeaderboardScoreRank--;
  return o;
}

void checkLeaderboardScoreRank(api.LeaderboardScoreRank o) {
  buildCounterLeaderboardScoreRank++;
  if (buildCounterLeaderboardScoreRank < 3) {
    unittest.expect(
      o.formattedNumScores!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedRank!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numScores!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rank!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaderboardScoreRank--;
}

core.List<api.LeaderboardEntry> buildUnnamed3573() {
  final o = <api.LeaderboardEntry>[];
  o.add(buildLeaderboardEntry());
  o.add(buildLeaderboardEntry());
  return o;
}

void checkUnnamed3573(core.List<api.LeaderboardEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLeaderboardEntry(o[0]);
  checkLeaderboardEntry(o[1]);
}

core.int buildCounterLeaderboardScores = 0;
api.LeaderboardScores buildLeaderboardScores() {
  final o = api.LeaderboardScores();
  buildCounterLeaderboardScores++;
  if (buildCounterLeaderboardScores < 3) {
    o.items = buildUnnamed3573();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.numScores = 'foo';
    o.playerScore = buildLeaderboardEntry();
    o.prevPageToken = 'foo';
  }
  buildCounterLeaderboardScores--;
  return o;
}

void checkLeaderboardScores(api.LeaderboardScores o) {
  buildCounterLeaderboardScores++;
  if (buildCounterLeaderboardScores < 3) {
    checkUnnamed3573(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numScores!,
      unittest.equals('foo'),
    );
    checkLeaderboardEntry(o.playerScore!);
    unittest.expect(
      o.prevPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaderboardScores--;
}

core.List<api.PlayerLevel> buildUnnamed3574() {
  final o = <api.PlayerLevel>[];
  o.add(buildPlayerLevel());
  o.add(buildPlayerLevel());
  return o;
}

void checkUnnamed3574(core.List<api.PlayerLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerLevel(o[0]);
  checkPlayerLevel(o[1]);
}

core.int buildCounterMetagameConfig = 0;
api.MetagameConfig buildMetagameConfig() {
  final o = api.MetagameConfig();
  buildCounterMetagameConfig++;
  if (buildCounterMetagameConfig < 3) {
    o.currentVersion = 42;
    o.kind = 'foo';
    o.playerLevels = buildUnnamed3574();
  }
  buildCounterMetagameConfig--;
  return o;
}

void checkMetagameConfig(api.MetagameConfig o) {
  buildCounterMetagameConfig++;
  if (buildCounterMetagameConfig < 3) {
    unittest.expect(
      o.currentVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3574(o.playerLevels!);
  }
  buildCounterMetagameConfig--;
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
    o.experienceInfo = buildPlayerExperienceInfo();
    o.friendStatus = 'foo';
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
    checkPlayerExperienceInfo(o.experienceInfo!);
    unittest.expect(
      o.friendStatus!,
      unittest.equals('foo'),
    );
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

core.int buildCounterPlayerAchievement = 0;
api.PlayerAchievement buildPlayerAchievement() {
  final o = api.PlayerAchievement();
  buildCounterPlayerAchievement++;
  if (buildCounterPlayerAchievement < 3) {
    o.achievementState = 'foo';
    o.currentSteps = 42;
    o.experiencePoints = 'foo';
    o.formattedCurrentStepsString = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lastUpdatedTimestamp = 'foo';
  }
  buildCounterPlayerAchievement--;
  return o;
}

void checkPlayerAchievement(api.PlayerAchievement o) {
  buildCounterPlayerAchievement++;
  if (buildCounterPlayerAchievement < 3) {
    unittest.expect(
      o.achievementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentSteps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.experiencePoints!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedCurrentStepsString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdatedTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerAchievement--;
}

core.List<api.PlayerAchievement> buildUnnamed3575() {
  final o = <api.PlayerAchievement>[];
  o.add(buildPlayerAchievement());
  o.add(buildPlayerAchievement());
  return o;
}

void checkUnnamed3575(core.List<api.PlayerAchievement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerAchievement(o[0]);
  checkPlayerAchievement(o[1]);
}

core.int buildCounterPlayerAchievementListResponse = 0;
api.PlayerAchievementListResponse buildPlayerAchievementListResponse() {
  final o = api.PlayerAchievementListResponse();
  buildCounterPlayerAchievementListResponse++;
  if (buildCounterPlayerAchievementListResponse < 3) {
    o.items = buildUnnamed3575();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPlayerAchievementListResponse--;
  return o;
}

void checkPlayerAchievementListResponse(api.PlayerAchievementListResponse o) {
  buildCounterPlayerAchievementListResponse++;
  if (buildCounterPlayerAchievementListResponse < 3) {
    checkUnnamed3575(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerAchievementListResponse--;
}

core.int buildCounterPlayerEvent = 0;
api.PlayerEvent buildPlayerEvent() {
  final o = api.PlayerEvent();
  buildCounterPlayerEvent++;
  if (buildCounterPlayerEvent < 3) {
    o.definitionId = 'foo';
    o.formattedNumEvents = 'foo';
    o.kind = 'foo';
    o.numEvents = 'foo';
    o.playerId = 'foo';
  }
  buildCounterPlayerEvent--;
  return o;
}

void checkPlayerEvent(api.PlayerEvent o) {
  buildCounterPlayerEvent++;
  if (buildCounterPlayerEvent < 3) {
    unittest.expect(
      o.definitionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedNumEvents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numEvents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.playerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerEvent--;
}

core.List<api.PlayerEvent> buildUnnamed3576() {
  final o = <api.PlayerEvent>[];
  o.add(buildPlayerEvent());
  o.add(buildPlayerEvent());
  return o;
}

void checkUnnamed3576(core.List<api.PlayerEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerEvent(o[0]);
  checkPlayerEvent(o[1]);
}

core.int buildCounterPlayerEventListResponse = 0;
api.PlayerEventListResponse buildPlayerEventListResponse() {
  final o = api.PlayerEventListResponse();
  buildCounterPlayerEventListResponse++;
  if (buildCounterPlayerEventListResponse < 3) {
    o.items = buildUnnamed3576();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPlayerEventListResponse--;
  return o;
}

void checkPlayerEventListResponse(api.PlayerEventListResponse o) {
  buildCounterPlayerEventListResponse++;
  if (buildCounterPlayerEventListResponse < 3) {
    checkUnnamed3576(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerEventListResponse--;
}

core.int buildCounterPlayerExperienceInfo = 0;
api.PlayerExperienceInfo buildPlayerExperienceInfo() {
  final o = api.PlayerExperienceInfo();
  buildCounterPlayerExperienceInfo++;
  if (buildCounterPlayerExperienceInfo < 3) {
    o.currentExperiencePoints = 'foo';
    o.currentLevel = buildPlayerLevel();
    o.kind = 'foo';
    o.lastLevelUpTimestampMillis = 'foo';
    o.nextLevel = buildPlayerLevel();
  }
  buildCounterPlayerExperienceInfo--;
  return o;
}

void checkPlayerExperienceInfo(api.PlayerExperienceInfo o) {
  buildCounterPlayerExperienceInfo++;
  if (buildCounterPlayerExperienceInfo < 3) {
    unittest.expect(
      o.currentExperiencePoints!,
      unittest.equals('foo'),
    );
    checkPlayerLevel(o.currentLevel!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastLevelUpTimestampMillis!,
      unittest.equals('foo'),
    );
    checkPlayerLevel(o.nextLevel!);
  }
  buildCounterPlayerExperienceInfo--;
}

core.int buildCounterPlayerLeaderboardScore = 0;
api.PlayerLeaderboardScore buildPlayerLeaderboardScore() {
  final o = api.PlayerLeaderboardScore();
  buildCounterPlayerLeaderboardScore++;
  if (buildCounterPlayerLeaderboardScore < 3) {
    o.friendsRank = buildLeaderboardScoreRank();
    o.kind = 'foo';
    o.leaderboardId = 'foo';
    o.publicRank = buildLeaderboardScoreRank();
    o.scoreString = 'foo';
    o.scoreTag = 'foo';
    o.scoreValue = 'foo';
    o.socialRank = buildLeaderboardScoreRank();
    o.timeSpan = 'foo';
    o.writeTimestamp = 'foo';
  }
  buildCounterPlayerLeaderboardScore--;
  return o;
}

void checkPlayerLeaderboardScore(api.PlayerLeaderboardScore o) {
  buildCounterPlayerLeaderboardScore++;
  if (buildCounterPlayerLeaderboardScore < 3) {
    checkLeaderboardScoreRank(o.friendsRank!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leaderboardId!,
      unittest.equals('foo'),
    );
    checkLeaderboardScoreRank(o.publicRank!);
    unittest.expect(
      o.scoreString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreValue!,
      unittest.equals('foo'),
    );
    checkLeaderboardScoreRank(o.socialRank!);
    unittest.expect(
      o.timeSpan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerLeaderboardScore--;
}

core.List<api.PlayerLeaderboardScore> buildUnnamed3577() {
  final o = <api.PlayerLeaderboardScore>[];
  o.add(buildPlayerLeaderboardScore());
  o.add(buildPlayerLeaderboardScore());
  return o;
}

void checkUnnamed3577(core.List<api.PlayerLeaderboardScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerLeaderboardScore(o[0]);
  checkPlayerLeaderboardScore(o[1]);
}

core.int buildCounterPlayerLeaderboardScoreListResponse = 0;
api.PlayerLeaderboardScoreListResponse
    buildPlayerLeaderboardScoreListResponse() {
  final o = api.PlayerLeaderboardScoreListResponse();
  buildCounterPlayerLeaderboardScoreListResponse++;
  if (buildCounterPlayerLeaderboardScoreListResponse < 3) {
    o.items = buildUnnamed3577();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.player = buildPlayer();
  }
  buildCounterPlayerLeaderboardScoreListResponse--;
  return o;
}

void checkPlayerLeaderboardScoreListResponse(
    api.PlayerLeaderboardScoreListResponse o) {
  buildCounterPlayerLeaderboardScoreListResponse++;
  if (buildCounterPlayerLeaderboardScoreListResponse < 3) {
    checkUnnamed3577(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkPlayer(o.player!);
  }
  buildCounterPlayerLeaderboardScoreListResponse--;
}

core.int buildCounterPlayerLevel = 0;
api.PlayerLevel buildPlayerLevel() {
  final o = api.PlayerLevel();
  buildCounterPlayerLevel++;
  if (buildCounterPlayerLevel < 3) {
    o.kind = 'foo';
    o.level = 42;
    o.maxExperiencePoints = 'foo';
    o.minExperiencePoints = 'foo';
  }
  buildCounterPlayerLevel--;
  return o;
}

void checkPlayerLevel(api.PlayerLevel o) {
  buildCounterPlayerLevel++;
  if (buildCounterPlayerLevel < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
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
  buildCounterPlayerLevel--;
}

core.List<api.Player> buildUnnamed3578() {
  final o = <api.Player>[];
  o.add(buildPlayer());
  o.add(buildPlayer());
  return o;
}

void checkUnnamed3578(core.List<api.Player> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayer(o[0]);
  checkPlayer(o[1]);
}

core.int buildCounterPlayerListResponse = 0;
api.PlayerListResponse buildPlayerListResponse() {
  final o = api.PlayerListResponse();
  buildCounterPlayerListResponse++;
  if (buildCounterPlayerListResponse < 3) {
    o.items = buildUnnamed3578();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterPlayerListResponse--;
  return o;
}

void checkPlayerListResponse(api.PlayerListResponse o) {
  buildCounterPlayerListResponse++;
  if (buildCounterPlayerListResponse < 3) {
    checkUnnamed3578(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerListResponse--;
}

core.int buildCounterPlayerScore = 0;
api.PlayerScore buildPlayerScore() {
  final o = api.PlayerScore();
  buildCounterPlayerScore++;
  if (buildCounterPlayerScore < 3) {
    o.formattedScore = 'foo';
    o.kind = 'foo';
    o.score = 'foo';
    o.scoreTag = 'foo';
    o.timeSpan = 'foo';
  }
  buildCounterPlayerScore--;
  return o;
}

void checkPlayerScore(api.PlayerScore o) {
  buildCounterPlayerScore++;
  if (buildCounterPlayerScore < 3) {
    unittest.expect(
      o.formattedScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeSpan!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlayerScore--;
}

core.List<api.PlayerScoreResponse> buildUnnamed3579() {
  final o = <api.PlayerScoreResponse>[];
  o.add(buildPlayerScoreResponse());
  o.add(buildPlayerScoreResponse());
  return o;
}

void checkUnnamed3579(core.List<api.PlayerScoreResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScoreResponse(o[0]);
  checkPlayerScoreResponse(o[1]);
}

core.int buildCounterPlayerScoreListResponse = 0;
api.PlayerScoreListResponse buildPlayerScoreListResponse() {
  final o = api.PlayerScoreListResponse();
  buildCounterPlayerScoreListResponse++;
  if (buildCounterPlayerScoreListResponse < 3) {
    o.kind = 'foo';
    o.submittedScores = buildUnnamed3579();
  }
  buildCounterPlayerScoreListResponse--;
  return o;
}

void checkPlayerScoreListResponse(api.PlayerScoreListResponse o) {
  buildCounterPlayerScoreListResponse++;
  if (buildCounterPlayerScoreListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3579(o.submittedScores!);
  }
  buildCounterPlayerScoreListResponse--;
}

core.List<core.String> buildUnnamed3580() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3580(core.List<core.String> o) {
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

core.List<api.PlayerScore> buildUnnamed3581() {
  final o = <api.PlayerScore>[];
  o.add(buildPlayerScore());
  o.add(buildPlayerScore());
  return o;
}

void checkUnnamed3581(core.List<api.PlayerScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlayerScore(o[0]);
  checkPlayerScore(o[1]);
}

core.int buildCounterPlayerScoreResponse = 0;
api.PlayerScoreResponse buildPlayerScoreResponse() {
  final o = api.PlayerScoreResponse();
  buildCounterPlayerScoreResponse++;
  if (buildCounterPlayerScoreResponse < 3) {
    o.beatenScoreTimeSpans = buildUnnamed3580();
    o.formattedScore = 'foo';
    o.kind = 'foo';
    o.leaderboardId = 'foo';
    o.scoreTag = 'foo';
    o.unbeatenScores = buildUnnamed3581();
  }
  buildCounterPlayerScoreResponse--;
  return o;
}

void checkPlayerScoreResponse(api.PlayerScoreResponse o) {
  buildCounterPlayerScoreResponse++;
  if (buildCounterPlayerScoreResponse < 3) {
    checkUnnamed3580(o.beatenScoreTimeSpans!);
    unittest.expect(
      o.formattedScore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leaderboardId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreTag!,
      unittest.equals('foo'),
    );
    checkUnnamed3581(o.unbeatenScores!);
  }
  buildCounterPlayerScoreResponse--;
}

core.List<api.ScoreSubmission> buildUnnamed3582() {
  final o = <api.ScoreSubmission>[];
  o.add(buildScoreSubmission());
  o.add(buildScoreSubmission());
  return o;
}

void checkUnnamed3582(core.List<api.ScoreSubmission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScoreSubmission(o[0]);
  checkScoreSubmission(o[1]);
}

core.int buildCounterPlayerScoreSubmissionList = 0;
api.PlayerScoreSubmissionList buildPlayerScoreSubmissionList() {
  final o = api.PlayerScoreSubmissionList();
  buildCounterPlayerScoreSubmissionList++;
  if (buildCounterPlayerScoreSubmissionList < 3) {
    o.kind = 'foo';
    o.scores = buildUnnamed3582();
  }
  buildCounterPlayerScoreSubmissionList--;
  return o;
}

void checkPlayerScoreSubmissionList(api.PlayerScoreSubmissionList o) {
  buildCounterPlayerScoreSubmissionList++;
  if (buildCounterPlayerScoreSubmissionList < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed3582(o.scores!);
  }
  buildCounterPlayerScoreSubmissionList--;
}

core.int buildCounterProfileSettings = 0;
api.ProfileSettings buildProfileSettings() {
  final o = api.ProfileSettings();
  buildCounterProfileSettings++;
  if (buildCounterProfileSettings < 3) {
    o.friendsListVisibility = 'foo';
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
      o.friendsListVisibility!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.profileVisible!, unittest.isTrue);
  }
  buildCounterProfileSettings--;
}

core.int buildCounterRevisionCheckResponse = 0;
api.RevisionCheckResponse buildRevisionCheckResponse() {
  final o = api.RevisionCheckResponse();
  buildCounterRevisionCheckResponse++;
  if (buildCounterRevisionCheckResponse < 3) {
    o.apiVersion = 'foo';
    o.kind = 'foo';
    o.revisionStatus = 'foo';
  }
  buildCounterRevisionCheckResponse--;
  return o;
}

void checkRevisionCheckResponse(api.RevisionCheckResponse o) {
  buildCounterRevisionCheckResponse++;
  if (buildCounterRevisionCheckResponse < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevisionCheckResponse--;
}

core.int buildCounterScoreSubmission = 0;
api.ScoreSubmission buildScoreSubmission() {
  final o = api.ScoreSubmission();
  buildCounterScoreSubmission++;
  if (buildCounterScoreSubmission < 3) {
    o.kind = 'foo';
    o.leaderboardId = 'foo';
    o.score = 'foo';
    o.scoreTag = 'foo';
    o.signature = 'foo';
  }
  buildCounterScoreSubmission--;
  return o;
}

void checkScoreSubmission(api.ScoreSubmission o) {
  buildCounterScoreSubmission++;
  if (buildCounterScoreSubmission < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leaderboardId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterScoreSubmission--;
}

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  final o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.coverImage = buildSnapshotImage();
    o.description = 'foo';
    o.driveId = 'foo';
    o.durationMillis = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedMillis = 'foo';
    o.progressValue = 'foo';
    o.title = 'foo';
    o.type = 'foo';
    o.uniqueName = 'foo';
  }
  buildCounterSnapshot--;
  return o;
}

void checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    checkSnapshotImage(o.coverImage!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.driveId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.durationMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotImage = 0;
api.SnapshotImage buildSnapshotImage() {
  final o = api.SnapshotImage();
  buildCounterSnapshotImage++;
  if (buildCounterSnapshotImage < 3) {
    o.height = 42;
    o.kind = 'foo';
    o.mimeType = 'foo';
    o.url = 'foo';
    o.width = 42;
  }
  buildCounterSnapshotImage--;
  return o;
}

void checkSnapshotImage(api.SnapshotImage o) {
  buildCounterSnapshotImage++;
  if (buildCounterSnapshotImage < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterSnapshotImage--;
}

core.List<api.Snapshot> buildUnnamed3583() {
  final o = <api.Snapshot>[];
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

void checkUnnamed3583(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterSnapshotListResponse = 0;
api.SnapshotListResponse buildSnapshotListResponse() {
  final o = api.SnapshotListResponse();
  buildCounterSnapshotListResponse++;
  if (buildCounterSnapshotListResponse < 3) {
    o.items = buildUnnamed3583();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterSnapshotListResponse--;
  return o;
}

void checkSnapshotListResponse(api.SnapshotListResponse o) {
  buildCounterSnapshotListResponse++;
  if (buildCounterSnapshotListResponse < 3) {
    checkUnnamed3583(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSnapshotListResponse--;
}

core.int buildCounterStatsResponse = 0;
api.StatsResponse buildStatsResponse() {
  final o = api.StatsResponse();
  buildCounterStatsResponse++;
  if (buildCounterStatsResponse < 3) {
    o.avgSessionLengthMinutes = 42.0;
    o.churnProbability = 42.0;
    o.daysSinceLastPlayed = 42;
    o.highSpenderProbability = 42.0;
    o.kind = 'foo';
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

void checkStatsResponse(api.StatsResponse o) {
  buildCounterStatsResponse++;
  if (buildCounterStatsResponse < 3) {
    unittest.expect(
      o.avgSessionLengthMinutes!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.churnProbability!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.daysSinceLastPlayed!,
      unittest.equals(42),
    );
    unittest.expect(
      o.highSpenderProbability!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numPurchases!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numSessions!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numSessionsPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.spendPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.spendProbability!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalSpendNext28Days!,
      unittest.equals(42.0),
    );
  }
  buildCounterStatsResponse--;
}

void main() {
  unittest.group('obj-schema-AchievementDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementDefinition(od);
    });
  });

  unittest.group('obj-schema-AchievementDefinitionsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementDefinitionsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementDefinitionsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementDefinitionsListResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementIncrementResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementIncrementResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementIncrementResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementIncrementResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementRevealResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementRevealResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementRevealResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementRevealResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementSetStepsAtLeastResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementSetStepsAtLeastResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementSetStepsAtLeastResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementSetStepsAtLeastResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementUnlockResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementUnlockResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementUnlockResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementUnlockResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementUpdateMultipleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementUpdateMultipleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementUpdateMultipleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementUpdateMultipleRequest(od);
    });
  });

  unittest.group('obj-schema-AchievementUpdateMultipleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementUpdateMultipleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementUpdateMultipleResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementUpdateMultipleResponse(od);
    });
  });

  unittest.group('obj-schema-AchievementUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-AchievementUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAchievementUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AchievementUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAchievementUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-ApplicationCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationCategory(od);
    });
  });

  unittest.group('obj-schema-ApplicationVerifyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationVerifyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationVerifyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationVerifyResponse(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-CategoryListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoryListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoryListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCategoryListResponse(od);
    });
  });

  unittest.group('obj-schema-EndPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EndPoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndPoint(od);
    });
  });

  unittest.group('obj-schema-EventBatchRecordFailure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventBatchRecordFailure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventBatchRecordFailure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventBatchRecordFailure(od);
    });
  });

  unittest.group('obj-schema-EventChild', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventChild();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EventChild.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEventChild(od);
    });
  });

  unittest.group('obj-schema-EventDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventDefinition(od);
    });
  });

  unittest.group('obj-schema-EventDefinitionListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventDefinitionListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventDefinitionListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventDefinitionListResponse(od);
    });
  });

  unittest.group('obj-schema-EventPeriodRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventPeriodRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventPeriodRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventPeriodRange(od);
    });
  });

  unittest.group('obj-schema-EventPeriodUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventPeriodUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventPeriodUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventPeriodUpdate(od);
    });
  });

  unittest.group('obj-schema-EventRecordFailure', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventRecordFailure();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventRecordFailure.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventRecordFailure(od);
    });
  });

  unittest.group('obj-schema-EventRecordRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventRecordRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventRecordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventRecordRequest(od);
    });
  });

  unittest.group('obj-schema-EventUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-EventUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-GamesAchievementIncrement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGamesAchievementIncrement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GamesAchievementIncrement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGamesAchievementIncrement(od);
    });
  });

  unittest.group('obj-schema-GamesAchievementSetStepsAtLeast', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGamesAchievementSetStepsAtLeast();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GamesAchievementSetStepsAtLeast.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGamesAchievementSetStepsAtLeast(od);
    });
  });

  unittest.group('obj-schema-ImageAsset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImageAsset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImageAsset(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-InstanceAndroidDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceAndroidDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceAndroidDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceAndroidDetails(od);
    });
  });

  unittest.group('obj-schema-InstanceIosDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceIosDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceIosDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceIosDetails(od);
    });
  });

  unittest.group('obj-schema-InstanceWebDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceWebDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceWebDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceWebDetails(od);
    });
  });

  unittest.group('obj-schema-Leaderboard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaderboard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Leaderboard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaderboard(od);
    });
  });

  unittest.group('obj-schema-LeaderboardEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaderboardEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaderboardEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaderboardEntry(od);
    });
  });

  unittest.group('obj-schema-LeaderboardListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaderboardListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaderboardListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaderboardListResponse(od);
    });
  });

  unittest.group('obj-schema-LeaderboardScoreRank', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaderboardScoreRank();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaderboardScoreRank.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaderboardScoreRank(od);
    });
  });

  unittest.group('obj-schema-LeaderboardScores', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaderboardScores();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaderboardScores.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaderboardScores(od);
    });
  });

  unittest.group('obj-schema-MetagameConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetagameConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetagameConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetagameConfig(od);
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

  unittest.group('obj-schema-PlayerAchievement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerAchievement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerAchievement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerAchievement(od);
    });
  });

  unittest.group('obj-schema-PlayerAchievementListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerAchievementListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerAchievementListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerAchievementListResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerEvent(od);
    });
  });

  unittest.group('obj-schema-PlayerEventListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerEventListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerEventListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerEventListResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerExperienceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerExperienceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerExperienceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerExperienceInfo(od);
    });
  });

  unittest.group('obj-schema-PlayerLeaderboardScore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerLeaderboardScore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerLeaderboardScore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerLeaderboardScore(od);
    });
  });

  unittest.group('obj-schema-PlayerLeaderboardScoreListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerLeaderboardScoreListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerLeaderboardScoreListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerLeaderboardScoreListResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerLevel(od);
    });
  });

  unittest.group('obj-schema-PlayerListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerListResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerScore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScore(od);
    });
  });

  unittest.group('obj-schema-PlayerScoreListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScoreListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScoreListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScoreListResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerScoreResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScoreResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScoreResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScoreResponse(od);
    });
  });

  unittest.group('obj-schema-PlayerScoreSubmissionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayerScoreSubmissionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlayerScoreSubmissionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlayerScoreSubmissionList(od);
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

  unittest.group('obj-schema-RevisionCheckResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevisionCheckResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevisionCheckResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevisionCheckResponse(od);
    });
  });

  unittest.group('obj-schema-ScoreSubmission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScoreSubmission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScoreSubmission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScoreSubmission(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Snapshot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-SnapshotImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotImage(od);
    });
  });

  unittest.group('obj-schema-SnapshotListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotListResponse(od);
    });
  });

  unittest.group('obj-schema-StatsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatsResponse(od);
    });
  });

  unittest.group('resource-AchievementDefinitionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievementDefinitions;
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('games/v1/achievements'),
        );
        pathOffset += 21;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp =
            convert.json.encode(buildAchievementDefinitionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkAchievementDefinitionsListResponse(
          response as api.AchievementDefinitionsListResponse);
    });
  });

  unittest.group('resource-AchievementsResource', () {
    unittest.test('method--increment', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
      final arg_achievementId = 'foo';
      final arg_stepsToIncrement = 42;
      final arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/achievements/'),
        );
        pathOffset += 22;
        index = path.indexOf('/increment', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/increment'),
        );
        pathOffset += 10;

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
          core.int.parse(queryMap['stepsToIncrement']!.first),
          unittest.equals(arg_stepsToIncrement),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAchievementIncrementResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.increment(
          arg_achievementId, arg_stepsToIncrement,
          requestId: arg_requestId, $fields: arg_$fields);
      checkAchievementIncrementResponse(
          response as api.AchievementIncrementResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
      final arg_playerId = 'foo';
      final arg_language = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_state = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('games/v1/players/'),
        );
        pathOffset += 17;
        index = path.indexOf('/achievements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/achievements'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['state']!.first,
          unittest.equals(arg_state),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayerAchievementListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_playerId,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          state: arg_state,
          $fields: arg_$fields);
      checkPlayerAchievementListResponse(
          response as api.PlayerAchievementListResponse);
    });

    unittest.test('method--reveal', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/achievements/'),
        );
        pathOffset += 22;
        index = path.indexOf('/reveal', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/reveal'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildAchievementRevealResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reveal(arg_achievementId, $fields: arg_$fields);
      checkAchievementRevealResponse(response as api.AchievementRevealResponse);
    });

    unittest.test('method--setStepsAtLeast', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
      final arg_achievementId = 'foo';
      final arg_steps = 42;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/achievements/'),
        );
        pathOffset += 22;
        index = path.indexOf('/setStepsAtLeast', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/setStepsAtLeast'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['steps']!.first),
          unittest.equals(arg_steps),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildAchievementSetStepsAtLeastResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setStepsAtLeast(arg_achievementId, arg_steps,
          $fields: arg_$fields);
      checkAchievementSetStepsAtLeastResponse(
          response as api.AchievementSetStepsAtLeastResponse);
    });

    unittest.test('method--unlock', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/achievements/'),
        );
        pathOffset += 22;
        index = path.indexOf('/unlock', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_achievementId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/unlock'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildAchievementUnlockResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unlock(arg_achievementId, $fields: arg_$fields);
      checkAchievementUnlockResponse(response as api.AchievementUnlockResponse);
    });

    unittest.test('method--updateMultiple', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).achievements;
      final arg_request = buildAchievementUpdateMultipleRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AchievementUpdateMultipleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAchievementUpdateMultipleRequest(obj);

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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('games/v1/achievements/updateMultiple'),
        );
        pathOffset += 36;

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
        final resp =
            convert.json.encode(buildAchievementUpdateMultipleResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateMultiple(arg_request, $fields: arg_$fields);
      checkAchievementUpdateMultipleResponse(
          response as api.AchievementUpdateMultipleResponse);
    });
  });

  unittest.group('resource-ApplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).applications;
      final arg_applicationId = 'foo';
      final arg_language = 'foo';
      final arg_platformType = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/applications/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['platformType']!.first,
          unittest.equals(arg_platformType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_applicationId,
          language: arg_language,
          platformType: arg_platformType,
          $fields: arg_$fields);
      checkApplication(response as api.Application);
    });

    unittest.test('method--getEndPoint', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).applications;
      final arg_applicationId = 'foo';
      final arg_endPointType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('games/v1/applications/getEndPoint'),
        );
        pathOffset += 33;

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
          queryMap['applicationId']!.first,
          unittest.equals(arg_applicationId),
        );
        unittest.expect(
          queryMap['endPointType']!.first,
          unittest.equals(arg_endPointType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEndPoint());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getEndPoint(
          applicationId: arg_applicationId,
          endPointType: arg_endPointType,
          $fields: arg_$fields);
      checkEndPoint(response as api.EndPoint);
    });

    unittest.test('method--played', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).applications;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('games/v1/applications/played'),
        );
        pathOffset += 28;

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
      await res.played($fields: arg_$fields);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).applications;
      final arg_applicationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/applications/'),
        );
        pathOffset += 22;
        index = path.indexOf('/verify', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_applicationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/verify'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildApplicationVerifyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verify(arg_applicationId, $fields: arg_$fields);
      checkApplicationVerifyResponse(response as api.ApplicationVerifyResponse);
    });
  });

  unittest.group('resource-EventsResource', () {
    unittest.test('method--listByPlayer', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).events;
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('games/v1/events'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildPlayerEventListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listByPlayer(
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPlayerEventListResponse(response as api.PlayerEventListResponse);
    });

    unittest.test('method--listDefinitions', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).events;
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('games/v1/eventDefinitions'),
        );
        pathOffset += 25;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildEventDefinitionListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listDefinitions(
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkEventDefinitionListResponse(
          response as api.EventDefinitionListResponse);
    });

    unittest.test('method--record', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).events;
      final arg_request = buildEventRecordRequest();
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EventRecordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEventRecordRequest(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('games/v1/events'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEventUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.record(arg_request,
          language: arg_language, $fields: arg_$fields);
      checkEventUpdateResponse(response as api.EventUpdateResponse);
    });
  });

  unittest.group('resource-LeaderboardsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).leaderboards;
      final arg_leaderboardId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/leaderboards/'),
        );
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLeaderboard());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_leaderboardId,
          language: arg_language, $fields: arg_$fields);
      checkLeaderboard(response as api.Leaderboard);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).leaderboards;
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('games/v1/leaderboards'),
        );
        pathOffset += 21;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildLeaderboardListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLeaderboardListResponse(response as api.LeaderboardListResponse);
    });
  });

  unittest.group('resource-MetagameResource', () {
    unittest.test('method--getMetagameConfig', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).metagame;
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('games/v1/metagameConfig'),
        );
        pathOffset += 23;

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
        final resp = convert.json.encode(buildMetagameConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetagameConfig($fields: arg_$fields);
      checkMetagameConfig(response as api.MetagameConfig);
    });

    unittest.test('method--listCategoriesByPlayer', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).metagame;
      final arg_playerId = 'foo';
      final arg_collection = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('games/v1/players/'),
        );
        pathOffset += 17;
        index = path.indexOf('/categories/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/categories/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_collection'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildCategoryListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listCategoriesByPlayer(
          arg_playerId, arg_collection,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCategoryListResponse(response as api.CategoryListResponse);
    });
  });

  unittest.group('resource-PlayersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).players;
      final arg_playerId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('games/v1/players/'),
        );
        pathOffset += 17;
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_playerId,
          language: arg_language, $fields: arg_$fields);
      checkPlayer(response as api.Player);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).players;
      final arg_collection = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('games/v1/players/me/players/'),
        );
        pathOffset += 28;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_collection'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildPlayerListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_collection,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPlayerListResponse(response as api.PlayerListResponse);
    });
  });

  unittest.group('resource-RevisionsResource', () {
    unittest.test('method--check', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).revisions;
      final arg_clientRevision = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('games/v1/revisions/check'),
        );
        pathOffset += 24;

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
          queryMap['clientRevision']!.first,
          unittest.equals(arg_clientRevision),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevisionCheckResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.check(arg_clientRevision, $fields: arg_$fields);
      checkRevisionCheckResponse(response as api.RevisionCheckResponse);
    });
  });

  unittest.group('resource-ScoresResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).scores;
      final arg_playerId = 'foo';
      final arg_leaderboardId = 'foo';
      final arg_timeSpan = 'foo';
      final arg_includeRankType = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('games/v1/players/'),
        );
        pathOffset += 17;
        index = path.indexOf('/leaderboards/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/leaderboards/'),
        );
        pathOffset += 14;
        index = path.indexOf('/scores/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/scores/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_timeSpan'),
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
          queryMap['includeRankType']!.first,
          unittest.equals(arg_includeRankType),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp =
            convert.json.encode(buildPlayerLeaderboardScoreListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_playerId, arg_leaderboardId, arg_timeSpan,
          includeRankType: arg_includeRankType,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkPlayerLeaderboardScoreListResponse(
          response as api.PlayerLeaderboardScoreListResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).scores;
      final arg_leaderboardId = 'foo';
      final arg_collection = 'foo';
      final arg_timeSpan = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/leaderboards/'),
        );
        pathOffset += 22;
        index = path.indexOf('/scores/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/scores/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_collection'),
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
          queryMap['timeSpan']!.first,
          unittest.equals(arg_timeSpan),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildLeaderboardScores());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_leaderboardId, arg_collection, arg_timeSpan,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkLeaderboardScores(response as api.LeaderboardScores);
    });

    unittest.test('method--listWindow', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).scores;
      final arg_leaderboardId = 'foo';
      final arg_collection = 'foo';
      final arg_timeSpan = 'foo';
      final arg_language = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_resultsAbove = 42;
      final arg_returnTopIfAbsent = true;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/leaderboards/'),
        );
        pathOffset += 22;
        index = path.indexOf('/window/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/window/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_collection'),
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
          queryMap['timeSpan']!.first,
          unittest.equals(arg_timeSpan),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          core.int.parse(queryMap['resultsAbove']!.first),
          unittest.equals(arg_resultsAbove),
        );
        unittest.expect(
          queryMap['returnTopIfAbsent']!.first,
          unittest.equals('$arg_returnTopIfAbsent'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLeaderboardScores());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listWindow(
          arg_leaderboardId, arg_collection, arg_timeSpan,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          resultsAbove: arg_resultsAbove,
          returnTopIfAbsent: arg_returnTopIfAbsent,
          $fields: arg_$fields);
      checkLeaderboardScores(response as api.LeaderboardScores);
    });

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).scores;
      final arg_leaderboardId = 'foo';
      final arg_score = 'foo';
      final arg_language = 'foo';
      final arg_scoreTag = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('games/v1/leaderboards/'),
        );
        pathOffset += 22;
        index = path.indexOf('/scores', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_leaderboardId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/scores'),
        );
        pathOffset += 7;

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
          queryMap['score']!.first,
          unittest.equals(arg_score),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['scoreTag']!.first,
          unittest.equals(arg_scoreTag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayerScoreResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.submit(arg_leaderboardId, arg_score,
          language: arg_language, scoreTag: arg_scoreTag, $fields: arg_$fields);
      checkPlayerScoreResponse(response as api.PlayerScoreResponse);
    });

    unittest.test('method--submitMultiple', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).scores;
      final arg_request = buildPlayerScoreSubmissionList();
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PlayerScoreSubmissionList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPlayerScoreSubmissionList(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('games/v1/leaderboards/scores'),
        );
        pathOffset += 28;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPlayerScoreListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.submitMultiple(arg_request,
          language: arg_language, $fields: arg_$fields);
      checkPlayerScoreListResponse(response as api.PlayerScoreListResponse);
    });
  });

  unittest.group('resource-SnapshotsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).snapshots;
      final arg_snapshotId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('games/v1/snapshots/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_snapshotId'),
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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_snapshotId,
          language: arg_language, $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).snapshots;
      final arg_playerId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('games/v1/players/'),
        );
        pathOffset += 17;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_playerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/snapshots'),
        );
        pathOffset += 10;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
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
        final resp = convert.json.encode(buildSnapshotListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_playerId,
          language: arg_language,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSnapshotListResponse(response as api.SnapshotListResponse);
    });
  });

  unittest.group('resource-StatsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GamesApi(mock).stats;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('games/v1/stats'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get($fields: arg_$fields);
      checkStatsResponse(response as api.StatsResponse);
    });
  });
}
